part of 'favorite_hotel_bloc.dart';

@freezed
class FavoriteHotelEvent with _$FavoriteHotelEvent {
  const factory FavoriteHotelEvent.fetchFavoriteHotel() = FetchFavoriteHotel;

  const factory FavoriteHotelEvent.removeFavoriteHotel(
      {required String hotelId}) = RemoveFavoriteHotel;
}
