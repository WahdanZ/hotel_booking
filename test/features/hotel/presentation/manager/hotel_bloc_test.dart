import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/add_favorite_hotel_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/get_hotels_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/remove_favorite_hotel_use_case.dart';
import 'package:hotel_booking/features/hotel/presentation/bloc/hotel/hotel_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes.dart';
import '../../../../test_injection.dart';

void main() {
  late GetHotelsUseCase mockGetHotelsUseCase;
  late AddFavoriteHotelUseCase mockAddFavoriteHotelUseCase;
  late RemoveFavoriteHotelUseCase mockRemoveFavoriteHotelUseCase;
  late HotelBloc hotelBloc;

  setUpAll(() {
    configureTestDependencies();

    registerFallbackValue(FakeAddFavoriteHotelParams());
    registerFallbackValue(FakeRemoveFavoriteHotelParams());
    registerFallbackValue(Any());
  });

  setUp(() {
    mockGetHotelsUseCase = injectMock();
    mockAddFavoriteHotelUseCase = injectMock();
    mockRemoveFavoriteHotelUseCase = injectMock();

    hotelBloc = HotelBloc(
      getHotelsUseCase: mockGetHotelsUseCase,
      addFavoriteHotelUseCase: mockAddFavoriteHotelUseCase,
      removeFavoriteHotelUseCase: mockRemoveFavoriteHotelUseCase,
    );
  });

  tearDown(() {
    hotelBloc.close();
  });

  group('HotelBloc Tests', () {
    blocTest<HotelBloc, HotelState>(
      'emits [HotelLoading, HotelLoaded] when FetchHotel is added and getHotelsUseCase succeeds with showLoading=true',
      build: () {
        when(() => mockGetHotelsUseCase.execute(params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success([
                  createHotelEntity(hotelId: '1', isFavorite: false),
                  createHotelEntity(hotelId: '2', isFavorite: true),
                ]));
        return hotelBloc;
      },
      act: (bloc) => bloc.add(const FetchHotel(showLoading: true)),
      expect: () => [
        const HotelState.loading(),
        HotelState.loaded([
          createHotelEntity(hotelId: '1', isFavorite: false),
          createHotelEntity(hotelId: '2', isFavorite: true),
        ]),
      ],
      verify: (_) {
        verify(() => mockGetHotelsUseCase.execute(params: any(named: 'params')))
            .called(1);
      },
    );

    blocTest<HotelBloc, HotelState>(
      'emits [HotelLoaded] when FetchHotel is added and getHotelsUseCase succeeds with showLoading=false',
      build: () {
        when(() => mockGetHotelsUseCase.execute(params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success([
                  createHotelEntity(hotelId: '1', isFavorite: false),
                ]));
        return hotelBloc;
      },
      act: (bloc) => bloc.add(const FetchHotel(showLoading: false)),
      expect: () => [
        HotelState.loaded([
          createHotelEntity(hotelId: '1', isFavorite: false),
        ]),
      ],
      verify: (_) {
        verify(() => mockGetHotelsUseCase.execute(params: any(named: 'params')))
            .called(1);
      },
    );

    blocTest<HotelBloc, HotelState>(
      'emits [HotelLoading, HotelError] when FetchHotel is added and getHotelsUseCase fails with showLoading=true',
      build: () {
        when(() => mockGetHotelsUseCase.execute(params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.failure(
                const NetworkFailure.api(message: 'Failed to fetch hotels')));
        return hotelBloc;
      },
      act: (bloc) => bloc.add(const FetchHotel(showLoading: true)),
      expect: () => [
        const HotelState.loading(),
        const HotelState.error('Failed to fetch hotels'),
      ],
      verify: (_) {
        verify(() => mockGetHotelsUseCase.execute(params: any(named: 'params')))
            .called(1);
      },
    );

    blocTest<HotelBloc, HotelState>(
      'emits [HotelError] when FetchHotel is added and getHotelsUseCase fails with showLoading=false',
      build: () {
        when(() => mockGetHotelsUseCase.execute(params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.failure(
                const NetworkFailure.api(message: 'Failed to fetch hotels')));
        return hotelBloc;
      },
      act: (bloc) => bloc.add(const FetchHotel(showLoading: false)),
      expect: () => [
        const HotelState.error('Failed to fetch hotels'),
      ],
      verify: (_) {
        verify(() => mockGetHotelsUseCase.execute(params: any(named: 'params')))
            .called(1);
      },
    );

    blocTest<HotelBloc, HotelState>(
      'emits [HotelLoaded] with updated favorite status when AddFavoriteHotel is added and addFavoriteHotelUseCase succeeds',
      build: () {
        when(() => mockAddFavoriteHotelUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success(true));
        return hotelBloc;
      },
      seed: () => HotelState.loaded([
        createHotelEntity(hotelId: '1', isFavorite: false),
        createHotelEntity(hotelId: '2', isFavorite: false),
      ]),
      act: (bloc) => bloc.add(AddFavoriteHotel(
          hotel: createHotelEntity(hotelId: '1', isFavorite: false))),
      expect: () => [
        HotelState.loaded([
          createHotelEntity(hotelId: '1', isFavorite: true),
          createHotelEntity(hotelId: '2', isFavorite: false),
        ]),
      ],
      verify: (_) {
        verify(() => mockAddFavoriteHotelUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<HotelBloc, HotelState>(
      'emits [HotelError] when AddFavoriteHotel is added and addFavoriteHotelUseCase fails',
      build: () {
        when(() => mockAddFavoriteHotelUseCase.execute(
            params: any(
                named: 'params'))).thenAnswer((_) async => CustomResult.failure(
            const NetworkFailure.unknown(message: 'Failed to add favorite')));
        return hotelBloc;
      },
      act: (bloc) => bloc.add(AddFavoriteHotel(
          hotel: createHotelEntity(hotelId: '1', isFavorite: false))),
      expect: () => [
        const HotelState.error('Failed to add favorite'),
      ],
      verify: (_) {
        verify(() => mockAddFavoriteHotelUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<HotelBloc, HotelState>(
      'emits [HotelLoaded] with updated favorite status when RemoveFavoriteHotel is added and removeFavoriteHotelUseCase succeeds',
      build: () {
        when(() => mockRemoveFavoriteHotelUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.success(true));
        return hotelBloc;
      },
      seed: () => HotelState.loaded([
        createHotelEntity(hotelId: '1', isFavorite: true),
        createHotelEntity(hotelId: '2', isFavorite: false),
      ]),
      act: (bloc) => bloc.add(const RemoveFavoriteHotel(hotelId: '1')),
      expect: () => [
        HotelState.loaded([
          createHotelEntity(hotelId: '1', isFavorite: false),
          createHotelEntity(hotelId: '2', isFavorite: false),
        ]),
      ],
      verify: (_) {
        verify(() => mockRemoveFavoriteHotelUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<HotelBloc, HotelState>(
      'emits [HotelError] when RemoveFavoriteHotel is added and removeFavoriteHotelUseCase fails',
      build: () {
        when(() => mockRemoveFavoriteHotelUseCase.execute(
                params: any(named: 'params')))
            .thenAnswer((_) async => CustomResult.failure(
                const NetworkFailure.unknown(
                    message: 'Failed to remove favorite')));
        return hotelBloc;
      },
      act: (bloc) => bloc.add(const RemoveFavoriteHotel(hotelId: '1')),
      expect: () => [
        const HotelState.error('Failed to remove favorite'),
      ],
      verify: (_) {
        verify(() => mockRemoveFavoriteHotelUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );
  });
}
