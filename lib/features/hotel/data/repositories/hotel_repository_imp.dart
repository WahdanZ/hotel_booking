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
    final task = DioNetworkTask(() => remoteDataSource.getHotels());
    final favoriteHotels = await localDataSource.getFavoriteHotels();
    final favoriteHotelIds = favoriteHotels.map((e) => e.hotelId).toList();
    final hotels = await networkTaskManager
        .executeTask(task, useIsolate: true)
        .map((response) {
      return response.hotels
          .map((hotel) => hotelMapper.mapFromModel(hotel))
          .map((hotel) => hotel.copyWith(
              isFavorite: favoriteHotelIds.contains(hotel.hotelId)))
          .toList();
    });
    return hotels;
  }

  @override
  Future<void> addFavoriteHotel(HotelEntity hotel) async {
    final favoriteHotelModel = favoriteHotelMapper.mapFromEntity(hotel);
    await localDataSource.addFavoriteHotel(favoriteHotelModel);
  }

  @override
  Future<void> removeFavoriteHotel(String hotelId) async {
    await localDataSource.removeFavoriteHotel(hotelId);
  }

  @override
  Future<List<HotelEntity>> getFavoriteHotels() async {
    final favoriteModels = await localDataSource.getFavoriteHotels();
    return favoriteModels.map(favoriteHotelMapper.mapFromModel).toList();
  }

  @override
  Future<bool> isFavorite(String hotelId) async {
    return await localDataSource.isFavorite(hotelId);
  }
}
