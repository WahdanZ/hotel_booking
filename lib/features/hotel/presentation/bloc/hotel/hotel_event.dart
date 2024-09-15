part of 'hotel_bloc.dart';

@freezed
class HotelEvent with _$HotelEvent {
  const factory HotelEvent.fetchHotel({@Default(false) bool showLoading}) =
      FetchHotel;

  const factory HotelEvent.addFavoriteHotel({required HotelEntity hotel}) =
      AddFavoriteHotel;

  const factory HotelEvent.removeFavoriteHotel({required String hotelId}) =
      RemoveFavoriteHotel;
}
