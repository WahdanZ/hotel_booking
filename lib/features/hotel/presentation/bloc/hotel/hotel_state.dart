part of 'hotel_bloc.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState.initial() = _Initial;

  const factory HotelState.loading() = _Loading;

  const factory HotelState.loaded(List<HotelEntity> hotels) = _Loaded;

  const factory HotelState.error(String error) = _Error;
}
