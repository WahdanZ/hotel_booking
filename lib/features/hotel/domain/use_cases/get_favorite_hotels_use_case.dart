import 'package:hotel_booking/base/domain/index.dart';
import 'package:hotel_booking/base/result/result.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/repositories/hotel_repository.dart';

class GetFavoriteHotelsUseCase extends UseCaseResult<List<HotelEntity>, Any> {
  final HotelRepository hotelRepository;

  GetFavoriteHotelsUseCase({required this.hotelRepository});

  @override
  Future<CustomResult<List<HotelEntity>>> buildUseCase(Any params) async {
    return hotelRepository.getFavoriteHotels();
  }
}
