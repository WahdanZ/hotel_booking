// File: test/features/hotel/data/repositories/hotel_repository_imp_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/data/mapper/favorite_hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/mapper/hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart';
import 'package:hotel_booking/features/hotel/data/repositories/hotel_repository_imp.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes.dart';
import '../../../../test_injection.dart';

void main() {
  late HotelRepositoryImp repository;
  late HotelRemoteDataSource mockRemoteDataSource;
  late NetworkTaskManager mockNetworkTaskManager;
  late HotelMapper mockHotelMapper;
  late HotelLocalDataSource mockLocalDataSource;
  late FavoriteHotelMapper mockFavoriteHotelMapper;

  setUpAll(() {
    configureTestDependencies();
    registerFallbackValue(const HotelResponse(hotels: []));
    registerFallbackValue(
      DioNetworkTask(() => Future.value(const HotelResponse(hotels: []))),
    );
    registerFallbackValue(createHotelModel());
    registerFallbackValue(createHotelEntity());
    registerFallbackValue(createFavoriteHotelModel());
  });

  setUp(() {
    mockRemoteDataSource = injectMock();
    mockNetworkTaskManager = injectMock();
    mockHotelMapper = injectMock();
    mockLocalDataSource = injectMock();
    mockFavoriteHotelMapper = injectMock();

    repository = HotelRepositoryImp(
      networkTaskManager: mockNetworkTaskManager,
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      hotelMapper: mockHotelMapper,
      favoriteHotelMapper: mockFavoriteHotelMapper,
    );
  });

  group('getHotels', () {
    test(
        'should return a list of HotelEntity when the remote data source returns hotels',
        () async {
      // Arrange
      final hotelModel = createHotelModel(hotelId: '1');
      final hotelResponse = HotelResponse(hotels: [hotelModel]);
      final hotelEntity = createHotelEntity(hotelId: '1', isFavorite: false);
      final customResult = CustomResult.success(hotelResponse);

      when(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).thenAnswer((_) async => customResult);
      when(() => mockHotelMapper.mapFromModel(hotelModel))
          .thenReturn(hotelEntity);
      when(() => mockLocalDataSource.getFavoriteHotels())
          .thenAnswer((_) async => []);

      // Act
      final result = await repository.getHotels();

      // Assert
      expect(result.isSuccess, true);
      expect(result.valueOrNull, isA<List<HotelEntity>>());
      expect(result.valueOrNull, [hotelEntity]);

      verify(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).called(1);
      verify(() => mockHotelMapper.mapFromModel(hotelModel)).called(1);
      verify(() => mockLocalDataSource.getFavoriteHotels()).called(1);
    });

    test(
        'should return a list of HotelEntity with isFavorite set to true when the hotel is a favorite',
        () async {
      // Arrange
      final hotelModel = createHotelModel(hotelId: '1');
      final hotelResponse = HotelResponse(hotels: [hotelModel]);
      final hotelEntity = createHotelEntity(hotelId: '1', isFavorite: true);
      final customResult = CustomResult.success(hotelResponse);

      when(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).thenAnswer((_) async => customResult);
      when(() => mockHotelMapper.mapFromModel(hotelModel))
          .thenReturn(hotelEntity);
      when(() => mockLocalDataSource.getFavoriteHotels())
          .thenAnswer((_) async => [createFavoriteHotelModel()]);

      // Act
      final result = await repository.getHotels();

      // Assert
      expect(result.isSuccess, true);
      expect(result.valueOrNull, isA<List<HotelEntity>>());
      expect(result.valueOrNull, [hotelEntity]);

      verify(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).called(1);
      verify(() => mockHotelMapper.mapFromModel(hotelModel)).called(1);
      verify(() => mockLocalDataSource.getFavoriteHotels()).called(1);
    });
  });

  group('addFavoriteHotel', () {
    test('should add a hotel to favorites successfully', () async {
      // Arrange
      final hotelEntity = createHotelEntity();
      final favoriteHotelModel = createFavoriteHotelModel();

      when(() => mockFavoriteHotelMapper.mapFromEntity(hotelEntity))
          .thenReturn(favoriteHotelModel);
      when(() => mockLocalDataSource.addFavoriteHotel(favoriteHotelModel))
          .thenAnswer((_) async {});

      // Act
      await repository.addFavoriteHotel(hotelEntity);

      // Assert
      verify(() => mockFavoriteHotelMapper.mapFromEntity(hotelEntity))
          .called(1);
      verify(() => mockLocalDataSource.addFavoriteHotel(favoriteHotelModel))
          .called(1);
    });
  });

  group('removeFavoriteHotel', () {
    test('should remove a hotel from favorites successfully', () async {
      // Arrange
      const hotelId = '1';

      when(() => mockLocalDataSource.removeFavoriteHotel(hotelId))
          .thenAnswer((_) async {});

      // Act
      await repository.removeFavoriteHotel(hotelId);

      // Assert
      verify(() => mockLocalDataSource.removeFavoriteHotel(hotelId)).called(1);
    });
  });

  group('getFavoriteHotels', () {
    test('should return a list of favorite hotels successfully', () async {
      // Arrange
      final favoriteHotelModel = createFavoriteHotelModel();
      final hotelEntity = createHotelEntity(isFavorite: true);

      when(() => mockLocalDataSource.getFavoriteHotels())
          .thenAnswer((_) async => [favoriteHotelModel]);
      when(() => mockFavoriteHotelMapper.mapFromModel(favoriteHotelModel))
          .thenReturn(hotelEntity);

      // Act
      final result = await repository.getFavoriteHotels();

      // Assert
      expect(result, isA<List<HotelEntity>>());
      expect(result.length, 1);
      expect(result.first, hotelEntity);

      verify(() => mockLocalDataSource.getFavoriteHotels()).called(1);
      verify(() => mockFavoriteHotelMapper.mapFromModel(favoriteHotelModel))
          .called(1);
    });
  });

  group('isFavorite', () {
    test('should return true when the hotel is a favorite', () async {
      // Arrange
      const hotelId = '1';

      when(() => mockLocalDataSource.isFavorite(hotelId))
          .thenAnswer((_) async => true);

      // Act
      final result = await repository.isFavorite(hotelId);

      // Assert
      expect(result, true);

      verify(() => mockLocalDataSource.isFavorite(hotelId)).called(1);
    });
  });
}
