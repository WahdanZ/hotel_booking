import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_booking/base/domain/interactors/use_case.dart';
import 'package:hotel_booking/base/result/result.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/add_favorite_hotel_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/get_favorite_hotels_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/remove_favorite_hotel_use_case.dart';

part 'favorite_hotel_bloc.freezed.dart';
part 'favorite_hotel_event.dart';
part 'favorite_hotel_state.dart';

class FavoriteHotelBloc extends Bloc<FavoriteHotelEvent, FavoriteHotelState> {
  final GetFavoriteHotelsUseCase getFavoriteHotelsUseCase;
  final AddFavoriteHotelUseCase addFavoriteHotelUseCase;
  final RemoveFavoriteHotelUseCase removeFavoriteHotelUseCase;

  FavoriteHotelBloc({
    required this.getFavoriteHotelsUseCase,
    required this.addFavoriteHotelUseCase,
    required this.removeFavoriteHotelUseCase,
  }) : super(const FavoriteHotelState.initial()) {
    on<FetchFavoriteHotel>(_onFetchFavoriteHotel);
    on<RemoveFavoriteHotel>(_onRemoveFavoriteHotel);
  }

  Future<void> _onFetchFavoriteHotel(
      FetchFavoriteHotel event, Emitter<FavoriteHotelState> emit) async {
    emit(const FavoriteHotelState.loading());
    final result = await getFavoriteHotelsUseCase.execute(params: Any());
    _handleResult(result, emit, (data) {
      emit(FavoriteHotelState.loaded(data));
    });
  }

  Future<void> _onRemoveFavoriteHotel(
      RemoveFavoriteHotel event, Emitter<FavoriteHotelState> emit) async {
    await removeFavoriteHotelUseCase.execute(
        params: RemoveFavoriteHotelParams(hotelId: event.hotelId));
    add(const FetchFavoriteHotel());
  }

  void _handleResult(CustomResult result, Emitter<FavoriteHotelState> emit,
      Function onSuccess) {
    result.when(
      success: (data) => onSuccess(data),
      failure: (error) =>
          emit(FavoriteHotelState.error(error.message ?? 'unknown error')),
    );
  }
}
