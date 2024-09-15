import 'package:dio/dio.dart';
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/data/mapper/favorite_hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/mapper/hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/add_favorite_hotel_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/get_favorite_hotels_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/get_hotels_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/remove_favorite_hotel_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';

@Injectable()
class MockDio extends Mock implements Dio {}

@Injectable(as: HotelRemoteDataSource)
class MockHotelRemoteDataSource extends Mock implements HotelRemoteDataSource {}

@Injectable(as: NetworkTaskManager)
class MockNetworkTaskManager extends Mock implements NetworkTaskManager {}

@Injectable(as: HotelMapper)
class MockHotelMapper extends Mock implements HotelMapper {}

@Injectable(as: HotelLocalDataSource)
class MockHotelLocalDataSource extends Mock implements HotelLocalDataSource {}

@Injectable(as: FavoriteHotelMapper)
class MockFavoriteHotelMapper extends Mock implements FavoriteHotelMapper {}

@Injectable(as: GetHotelsUseCase)
class MockGetHotelsUseCase extends Mock implements GetHotelsUseCase {}

@Injectable(as: AddFavoriteHotelUseCase)
class MockAddFavoriteHotelUseCase extends Mock
    implements AddFavoriteHotelUseCase {}

@Injectable(as: RemoveFavoriteHotelUseCase)
class MockRemoveFavoriteHotelUseCase extends Mock
    implements RemoveFavoriteHotelUseCase {}

@Injectable(as: GetFavoriteHotelsUseCase)
class MockGetFavoriteHotelsUseCase extends Mock
    implements GetFavoriteHotelsUseCase {}
