import 'package:dio/dio.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'hotel_remote_data_source.g.dart';

@RestApi(baseUrl: "https://dkndmolrswy7b.cloudfront.net/")
abstract class HotelRemoteDataSource {
  @factoryMethod
  factory HotelRemoteDataSource(@Named('dio_client') Dio dio,
      {@Named('base_url') String baseUrl}) = _HotelRemoteDataSource;

  @GET("/hotels.json")
  Future<HotelResponse> getHotels();
}