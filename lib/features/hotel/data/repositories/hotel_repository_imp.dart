import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/data/mapper/favorite_hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/mapper/hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/repositories/hotel_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HotelRepository)
class HotelRepositoryImp extends HotelRepository {
  final NetworkTaskManager networkTaskManager;
  final HotelRemoteDataSource remoteDataSource;
  final HotelLocalDataSource localDataSource;
  final FavoriteHotelMapper favoriteHotelMapper;
  final HotelMapper hotelMapper;

  HotelRepositoryImp({
    required this.remoteDataSource,
    required this.networkTaskManager,
    required this.hotelMapper,
    required this.localDataSource,
    required this.favoriteHotelMapper,
  });

  @override
  Future<CustomResult<List<HotelEntity>>> getHotels() async {
    try {
      final task = DioNetworkTask(() => remoteDataSource.getHotels());
      final hotels = await networkTaskManager.executeTask(task).thenMap((response) async {
        List<String> favoriteHotelIds = await getFavoriteHotelIds();
        return response.hotels
            .map((hotel) => hotelMapper.mapFromModel(hotel))
            .map((hotel) => hotel.copyWith(
                isFavorite: favoriteHotelIds.contains(hotel.hotelId)))
            .toList();
      });
      return hotels;
    } catch (e) {
      return CustomResult.failure(
          NetworkFailure.unknown(message: e.toString()));
    }
  }

  Future<List<String>> getFavoriteHotelIds() async {
    List<String> favoriteHotelIds = [];
    try {
      final favoriteHotels = await localDataSource.getFavoriteHotels();
      favoriteHotelIds = favoriteHotels.map((e) => e.hotelId).toList();
    } catch (e) {
      logger.i('Error getting favorite hotel ids: $e');
    }
    return favoriteHotelIds;
  }

  @override
  Future<CustomResult<bool>> addFavoriteHotel(HotelEntity hotel) async {
    final favoriteHotelModel = favoriteHotelMapper.mapFromEntity(hotel);
    await localDataSource.addFavoriteHotel(favoriteHotelModel);
    return CustomResult.success(true);
  }

  @override
  Future<CustomResult<bool>> removeFavoriteHotel(String hotelId) async {
    await localDataSource.removeFavoriteHotel(hotelId);
    return CustomResult.success(true);
  }

  @override
  Future<CustomResult<List<HotelEntity>>> getFavoriteHotels() async {
    final favoriteModels = await localDataSource.getFavoriteHotels();
    return CustomResult.success(
        favoriteModels.map(favoriteHotelMapper.mapFromModel).toList());
  }

  @override
  Future<bool> isFavorite(String hotelId) async {
    return await localDataSource.isFavorite(hotelId);
  }
}
