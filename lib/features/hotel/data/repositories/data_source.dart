import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';

abstract class HotelRemoteDataSource{
  Future<HotelResponse> getHotels();
}