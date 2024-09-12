import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart';
import 'package:mocktail/mocktail.dart';
import 'package:hotel_booking/features/hotel/data/remote/data_sources/hotel_remote_data_source.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';
import 'package:dio/dio.dart';

import '../../../../../mocks.dart';
import '../../../../../test_injection.dart';


void main() {
  group('HotelRemoteDataSource', ()
  {
    late MockDio mockDio;
    late HotelRemoteDataSource dataSource;

    setUp(() {
      registerFallbackValue(Uri());
    });
setUpAll(() {
  configureTestDependencies();
  mockDio = injectMock();
  dataSource = HotelRemoteDataSourceImpl(mockDio);
  registerFallbackValue(RequestOptions(path: ''));
  when(() => mockDio.options).thenReturn(BaseOptions());

});
     test('should return a list of hotels when the call to remote data source is successful', () async {
      // arrange
       when(() => mockDio.fetch<Map<String, dynamic>>(any())).thenAnswer(
           (_) async => Response(data: {
               "hotels": [
                 {
                   "analytics": {
                     "select_item.item.0": {
                       "currency": "EUR",
                       "itemCategory": "4.0 - unverified, verySatisfied",
                       "itemCategory2": "IT08F-CAN#FEE#FEE,IT08P-DISC#CRED,IT08F-RES#INC,IT08P-DEP",
                       "itemId": "35489-giata",
                       "itemListName": "hotel list - recommendation",
                       "itemName": "Can Picafort Palace",
                       "itemRooms": "1",
                       "price": "844.00",
                       "quantity": "1"
                     }
                   },
                   "badges": [

                   ],
                   "best-offer": {
                     "applied-travel-discount": null,
                     "detailed-price-per-person": [

                     ],
                     "included-travel-discount": 0,
                     "original-travel-price": 84400,
                     "simple-price-per-person": 42200,
                     "total": 84400,
                     "travel-price": 84400,
                     "available-special-groups": [
                       "flexible",
                       "promotion"
                     ],
                     "flight-included": true,
                     "rooms": {
                       "overall": {
                         "attributes": [

                         ],
                         "boarding": "Ohne Verpflegung",
                         "name": "Apartment",
                         "adult-count": 2,
                         "children-ages": [

                         ],
                         "children-count": 0,
                         "quantity": 1,
                         "same-boarding": true,
                         "same-room-groups": true
                       },
                       "prices-and-occupancy": [
                         {
                           "adult-count": 2,
                           "children-ages": [

                           ],
                           "children-count": 0,
                           "detailed-price-per-person": [

                           ],
                           "group-identifier": "af21b91892c2f88a6dbe2d12c8ac269fd0bf538fe4136107a21a0b84d1fad9a3",
                           "simple-price-per-person": 42200,
                           "total": 84400
                         }
                       ],
                       "room-groups": [
                         {
                           "attributes": [

                           ],
                           "boarding": "Ohne Verpflegung",
                           "name": "Apartment",
                           "detailed-description": null,
                           "group-identifier": "af21b91892c2f88a6dbe2d12c8ac269fd0bf538fe4136107a21a0b84d1fad9a3",
                           "quantity": 1
                         }
                       ]
                     },
                     "travel-date": {
                       "days": 8,
                       "departure-date": "2024-10-15",
                       "nights": 7,
                       "return-date": "2024-10-22"
                     }
                   },
                   "category": 4,
                   "category-type": "dots",
                   "destination": "Can Picafort, Mallorca, Spanien",
                   "hotel-id": "35489-giata",
                   "images": [

                     {
                       "large": "https://image-resizer.prod.invia-travel.io/images/multicode/35489/org/hotel35489-bb7bd8d2-5ea9-466d-8059-54efa8951cd4.jpeg?width=700&height=525",
                       "small": "https://image-resizer.prod.invia-travel.io/images/multicode/35489/org/hotel35489-bb7bd8d2-5ea9-466d-8059-54efa8951cd4.jpeg?width=400&height=300"
                     },


                   ],
                   "latitude": 39.764034,
                   "longitude": 3.1490614,
                   "name": "Can Picafort Palace",
                   "rating-info": {
                     "recommendation-rate": 0,
                     "reviews-count": 381,
                     "score": 4.2,
                     "score-description": "Sehr Gut"
                   }
                 },
            ]
      }, statusCode: 200, requestOptions: RequestOptions(path: '')));
      // act
      final result = await dataSource.getHotels();
      // assert
      expect(result, isA<HotelResponse>());
      expect(result.hotels.length, 1);
    });
      test('should throw a ServerException when the call to remote data source is unsuccessful', () async {
      // arrange
      when(() => mockDio.fetch<Map<String, dynamic>>(any())).thenThrow(Exception());
      // act
      final call = dataSource.getHotels;
      // assert
      expect(() => call(), throwsA(isA<Exception>()));
    });


  });
}