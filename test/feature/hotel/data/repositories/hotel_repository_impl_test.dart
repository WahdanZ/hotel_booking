import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';
import 'package:hotel_booking/features/hotel/data/repositories/hotel_repository_imp.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes.dart';
import '../../../../mocks.dart';

void main() {
  late HotelRepositoryImp repository;
  late MockHotelRemoteDataSource mockRemoteDataSource;
  late MockNetworkTaskManager mockNetworkTaskManager;
  late MockHotelMapper mockHotelMapper;
  setUpAll(() {
    registerFallbackValue(const HotelResponse(hotels: []));

    registerFallbackValue(
        DioNetworkTask(() => Future.value(const HotelResponse(hotels: []))));
    registerFallbackValue(hotelResponse.hotels.first);
    registerFallbackValue(hotelEntity);
  });
  setUp(() {
    mockRemoteDataSource = MockHotelRemoteDataSource();
    mockNetworkTaskManager = MockNetworkTaskManager();
    mockHotelMapper = MockHotelMapper();
    repository = HotelRepositoryImp(
      mockRemoteDataSource,
      mockNetworkTaskManager,
      mockHotelMapper,
    );
  });

  group('getHotels', () {
    test(
        'should return a list of HotelEntity when the remote data source returns hotels',
        () async {
      // Arrange
      final customResult = CustomResult.success(hotelResponse);

      when(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).thenAnswer((_) => Future.value(customResult));
      when(() => mockHotelMapper.mapFromModel(any())).thenReturn(hotelEntity);

      // Act
      final result = await repository.getHotels();

      // Assert
      expect(result.valueOrNull, isA<List<HotelEntity>>());
      expect(result.valueOrNull, [hotelEntity]);
      verify(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).called(1);
      verify(() => mockHotelMapper.mapFromModel(any())).called(1);
    });
    test('should return a failure when the remote data source returns an error',
        () async {
      // Arrange
      final customResult = CustomResult.failure<HotelResponse>(
          const NetworkFailure.api(message: 'Failed to load hotels'));

      when(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).thenAnswer((_) => Future.value(customResult));

      // Act
      final result = await repository.getHotels();

      // Assert
      expect(result.errorOrNull?.message, 'Failed to load hotels');
      verify(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).called(1);
      verifyNever(() => mockHotelMapper.mapFromModel(any()));
    });

    test('should throw an exception when remote data source fails', () async {
      // Arrange
      when(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).thenThrow(Exception('Failed to load hotels'));

      // Act & Assert
      expect(() => repository.getHotels(), throwsA(isA<Exception>()));
      verify(() => mockNetworkTaskManager.executeTask<HotelResponse>(any(),
          useIsolate: true)).called(1);
    });
  });
}
