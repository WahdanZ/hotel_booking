import 'package:dio/dio.dart';
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/features/hotel/data/mapper/hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';

@Injectable()
class MockDio extends Mock implements Dio {}
@Injectable()
class MockHotelRemoteDataSource extends Mock implements HotelRemoteDataSource {}
@Injectable()
class MockNetworkTaskManager extends Mock implements NetworkTaskManager {}
@Injectable()
class MockHotelMapper extends Mock implements HotelMapper {}
