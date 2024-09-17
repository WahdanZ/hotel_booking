import 'package:hotel_booking/features/hotel/data/local/models/favorite_hotel_model.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';

abstract class HotelRemoteDataSource{
  Future<HotelResponse> getHotels();
}

abstract class HotelLocalDataSource {
  Future<void> addFavoriteHotel(FavoriteHotelModel hotel);

  Future<void> removeFavoriteHotel(String hotelId);

  Future<List<FavoriteHotelModel>> getFavoriteHotels();

  Future<bool> isFavorite(String hotelId);

  Future<bool> close();
}