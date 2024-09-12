import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/repositories/hotel_repository.dart';

class GetHotelsUseCase extends UseCaseResult<List<HotelEntity>, Any> {
  final HotelRepository _repository;

  GetHotelsUseCase(this._repository);

  @override
  Future<CustomResult<List<HotelEntity>>> buildUseCase(Any params) {
    return _repository.getHotels();
  }
}
