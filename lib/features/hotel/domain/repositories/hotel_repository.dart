import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';

abstract class HotelRepository {
  Future<CustomResult<List<HotelEntity>>> getHotels();

  Future<void> toggleFavoriteStatus(String hotelId);
}