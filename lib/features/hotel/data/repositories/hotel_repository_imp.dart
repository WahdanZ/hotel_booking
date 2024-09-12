
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/data/mapper/hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/repositories/hotel_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HotelRepository)
class HotelRepositoryImp extends HotelRepository {
  final NetworkTaskManager networkTaskManager;
  final HotelRemoteDataSource remoteDataSource;
  final HotelMapper hotelMapper;

  HotelRepositoryImp(this.remoteDataSource, this.networkTaskManager, this.hotelMapper);

  @override
  Future<CustomResult<List<HotelEntity>>> getHotels() {
    final task = DioNetworkTask(() => remoteDataSource.getHotels());
    return networkTaskManager.executeTask(task,useIsolate: true).map((response) {
      return response.hotels.map(hotelMapper.mapFromModel).toList();
    });
  }

  @override
  Future<void> toggleFavoriteStatus(String hotelId) {
    // TODO: implement toggleFavoriteStatus
    throw UnimplementedError();
  }

}