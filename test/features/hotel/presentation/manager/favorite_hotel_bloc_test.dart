import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/get_favorite_hotels_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/remove_favorite_hotel_use_case.dart';
import 'package:hotel_booking/features/hotel/presentation/bloc/favorite/favorite_hotel_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes.dart';
import '../../../../test_injection.dart';

void main() {
  late GetFavoriteHotelsUseCase mockGetFavoriteHotelsUseCase;
  late RemoveFavoriteHotelUseCase mockRemoveFavoriteHotelUseCase;
  late FavoriteHotelBloc favoriteHotelBloc;

  setUpAll(() {
    configureTestDependencies();
    registerFallbackValue(FakeRemoveFavoriteHotelParams());
    registerFallbackValue(Any());
  });

  setUp(() {
    mockGetFavoriteHotelsUseCase = injectMock();
    mockRemoveFavoriteHotelUseCase = injectMock();

    favoriteHotelBloc = FavoriteHotelBloc(
      getFavoriteHotelsUseCase: mockGetFavoriteHotelsUseCase,
      removeFavoriteHotelUseCase: mockRemoveFavoriteHotelUseCase,
    );
  });

  tearDown(() {
    favoriteHotelBloc.close();
  });

  group('FavoriteHotelBloc Tests', () {
    blocTest<FavoriteHotelBloc, FavoriteHotelState>(
      'emits [FavoriteHotelState.loading, FavoriteHotelState.loaded] when FetchFavoriteHotel is added and getFavoriteHotelsUseCase succeeds',
      build: () {
        when(() => mockGetFavoriteHotelsUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success([
                  createHotelEntity(hotelId: '1', isFavorite: true),
                  createHotelEntity(hotelId: '2', isFavorite: true),
                ]));
        return favoriteHotelBloc;
      },
      act: (bloc) => bloc.add(const FetchFavoriteHotel()),
      expect: () => [
        const FavoriteHotelState.loading(),
        FavoriteHotelState.loaded([
          createHotelEntity(hotelId: '1', isFavorite: true),
          createHotelEntity(hotelId: '2', isFavorite: true),
        ]),
      ],
      verify: (_) {
        verify(() => mockGetFavoriteHotelsUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<FavoriteHotelBloc, FavoriteHotelState>(
      'emits [FavoriteHotelState.loading, FavoriteHotelState.error] when FetchFavoriteHotel is added and getFavoriteHotelsUseCase fails',
      build: () {
        when(() => mockGetFavoriteHotelsUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.failure(
                const NetworkFailure.unknown(
                    message: 'Failed to fetch favorite hotels')));
        return favoriteHotelBloc;
      },
      act: (bloc) => bloc.add(const FetchFavoriteHotel()),
      expect: () => [
        const FavoriteHotelState.loading(),
        const FavoriteHotelState.error('Failed to fetch favorite hotels'),
      ],
      verify: (_) {
        verify(() => mockGetFavoriteHotelsUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<FavoriteHotelBloc, FavoriteHotelState>(
      'emits [FavoriteHotelState.loading, FavoriteHotelState.loaded] when RemoveFavoriteHotel is added and removal succeeds',
      build: () {
        when(() => mockRemoveFavoriteHotelUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success(true));

        when(() => mockGetFavoriteHotelsUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success([
                  createHotelEntity(hotelId: '2', isFavorite: true),
                ]));
        return favoriteHotelBloc;
      },
      seed: () => FavoriteHotelState.loaded([
        createHotelEntity(hotelId: '1', isFavorite: true),
        createHotelEntity(hotelId: '2', isFavorite: true),
      ]),
      act: (bloc) => bloc.add(const RemoveFavoriteHotel(hotelId: '1')),
      expect: () => [
        const FavoriteHotelState.loading(),
        FavoriteHotelState.loaded([
          createHotelEntity(hotelId: '2', isFavorite: true),
        ]),
      ],
      verify: (_) {
        verify(() => mockRemoveFavoriteHotelUseCase.execute(
            params: any(named: 'params'))).called(1);
        verify(() => mockGetFavoriteHotelsUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<FavoriteHotelBloc, FavoriteHotelState>(
      'emits [FavoriteHotelState.error] when RemoveFavoriteHotel is added and getFavoriteHotelsUseCase fails after removal',
      build: () {
        when(() => mockRemoveFavoriteHotelUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success(true));

        when(() => mockGetFavoriteHotelsUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.failure(
                const NetworkFailure.unknown(
                    message: 'Failed to fetch favorite hotels after removal')));
        return favoriteHotelBloc;
      },
      seed: () => FavoriteHotelState.loaded([
        createHotelEntity(hotelId: '1', isFavorite: true),
        createHotelEntity(hotelId: '2', isFavorite: true),
      ]),
      act: (bloc) => bloc.add(const RemoveFavoriteHotel(hotelId: '1')),
      expect: () => [
        const FavoriteHotelState.loading(),
        const FavoriteHotelState.error(
            'Failed to fetch favorite hotels after removal'),
      ],
      verify: (_) {
        verify(() => mockRemoveFavoriteHotelUseCase.execute(
            params: any(named: 'params'))).called(1);
        verify(() => mockGetFavoriteHotelsUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );
  });
}
