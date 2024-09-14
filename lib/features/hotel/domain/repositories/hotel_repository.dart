import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';

abstract class HotelRepository {
  Future<CustomResult<List<HotelEntity>>> getHotels();

  Future<void> addFavoriteHotel(HotelEntity hotel);

  Future<void> removeFavoriteHotel(String hotelId);

  Future<List<HotelEntity>> getFavoriteHotels();

  Future<bool> isFavorite(String hotelId);
}