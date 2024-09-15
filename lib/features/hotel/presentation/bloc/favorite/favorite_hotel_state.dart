part of 'favorite_hotel_bloc.dart';

@freezed
class FavoriteHotelState with _$FavoriteHotelState {
  const factory FavoriteHotelState.initial() = _Initial;

  const factory FavoriteHotelState.loading() = _Loading;

  const factory FavoriteHotelState.loaded(List<HotelEntity> hotels) =
      FavoriteHotelStateLoaded;

  const factory FavoriteHotelState.error(String error) = _Error;
}
