import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/repositories/hotel_repository.dart';

class AddFavoriteHotelUseCase
    extends UseCaseResult<bool, AddFavoriteHotelParams> {
  final HotelRepository _repository;

  AddFavoriteHotelUseCase(this._repository);

  @override
  Future<CustomResult<bool>> buildUseCase(AddFavoriteHotelParams params) {
    return _repository.addFavoriteHotel(params.hotel);
  }
}

class AddFavoriteHotelParams extends Params {
  final HotelEntity hotel;

  AddFavoriteHotelParams({required this.hotel});

  @override
  List<Object?> get props => [hotel];
}
