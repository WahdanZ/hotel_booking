import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';

abstract class HotelRepository {
  Future<CustomResult<List<HotelEntity>>> getHotels();

  Future<CustomResult<bool>> addFavoriteHotel(HotelEntity hotel);

  Future<CustomResult<bool>> removeFavoriteHotel(String hotelId);

  Future<CustomResult<List<HotelEntity>>> getFavoriteHotels();

  Future<bool> isFavorite(String hotelId);
}