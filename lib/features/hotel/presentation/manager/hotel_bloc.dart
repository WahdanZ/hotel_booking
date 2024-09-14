import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/add_favorite_hotel_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/get_hotels_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/remove_favorite_hotel_use_case.dart';

part 'hotel_bloc.freezed.dart';
part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final GetHotelsUseCase getHotelsUseCase;
  final AddFavoriteHotelUseCase addFavoriteHotelUseCase;
  final RemoveFavoriteHotelUseCase removeFavoriteHotelUseCase;

  HotelBloc({
    required this.getHotelsUseCase,
    required this.addFavoriteHotelUseCase,
    required this.removeFavoriteHotelUseCase,
  }) : super(const HotelState.initial()) {
    on<FetchHotel>(_onFetchHotel);
    on<AddFavoriteHotel>(_onAddFavoriteHotel);
    on<RemoveFavoriteHotel>(_onRemoveFavoriteHotel);
  }

  Future<void> _onFetchHotel(FetchHotel event, Emitter<HotelState> emit) async {
    emit(const HotelState.loading());
    final result = await getHotelsUseCase.execute(params: Any());
    _handleResult(result, emit, (data) {
      emit(HotelState.loaded(data));
    });
  }

  Future<void> _onAddFavoriteHotel(
      AddFavoriteHotel event, Emitter<HotelState> emit) async {
    final result = await addFavoriteHotelUseCase.execute(
        params: AddFavoriteHotelParams(hotel: event.hotel));
    _handleResult(result, emit, (data) {
      _updateHotelState(emit, event.hotel.hotelId, isFavorite: true);
    });
  }

  Future<void> _onRemoveFavoriteHotel(
      RemoveFavoriteHotel event, Emitter<HotelState> emit) async {
    final result = await removeFavoriteHotelUseCase.execute(
        params: RemoveFavoriteHotelParams(hotelId: event.hotelId));
    _handleResult(result, emit, (data) {
      _updateHotelState(emit, event.hotelId, isFavorite: false);
    });
  }

  void _handleResult(
      CustomResult result, Emitter<HotelState> emit, Function onSuccess) {
    result.when(
      success: (data) => onSuccess(data),
      failure: (error) =>
          emit(HotelState.error(error.message ?? 'unknown error')),
    );
  }

  void _updateHotelState(Emitter<HotelState> emit, String hotelId,
      {required bool isFavorite}) {
    state.maybeWhen(
      loaded: (hotels) {
        final updatedHotels = hotels.map((hotel) {
          if (hotel.hotelId == hotelId) {
            return hotel.copyWith(isFavorite: isFavorite);
          }
          return hotel;
        }).toList();
        emit(HotelState.loaded(updatedHotels));
      },
      orElse: () {},
    );
  }
}