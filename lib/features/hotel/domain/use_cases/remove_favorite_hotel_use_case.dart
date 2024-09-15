import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/repositories/hotel_repository.dart';

class RemoveFavoriteHotelUseCase
    extends UseCaseResult<bool, RemoveFavoriteHotelParams> {
  final HotelRepository _repository;

  RemoveFavoriteHotelUseCase(this._repository);

  @override
  Future<CustomResult<bool>> buildUseCase(RemoveFavoriteHotelParams params) {
    return _repository.removeFavoriteHotel(params.hotelId);
  }
}

class RemoveFavoriteHotelParams extends Params {
  final String hotelId;

  RemoveFavoriteHotelParams({required this.hotelId});

  @override
  List<Object?> get props => [hotelId];
}
