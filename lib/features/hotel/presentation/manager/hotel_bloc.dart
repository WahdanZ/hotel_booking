import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/repositories/hotel_repository.dart';

part 'hotel_bloc.freezed.dart';
part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final HotelRepository _repository;

  HotelBloc(this._repository) : super(const HotelState.initial()) {
    on<FetchHotel>((event, emit) async {
      emit(const HotelState.loading());
      final result = await _repository.getHotels();
      result.when(
        success: (data) {
          emit(HotelState.loaded(data));
        },
        failure: (error) {
          emit(HotelState.error(error.message ?? ' unknown error'));
        },
      );
    });
  }
}
