import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_booking/features/hotel/data/mapper/hotel_mapper.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';

void main() {
  group('HotelMapper', () {
    final mapper = HotelMapper();

    test('mapFromModel should map HotelModel to HotelEntity correctly', () {
      const hotelModel = HotelModel(
        hotelId: '1',
        name: 'Test Hotel',
        destination: 'Test Destination',
        images: [
          HotelImageModel(large: 'large.jpg', small: 'small.jpg')
        ],
        ratingInfo: RatingInfoModel(
          score: 4.5,
          reviewsCount: 100,
          scoreDescription: 'Excellent',
        ),
        bestOffer: BestOfferModel(
          total: 200,
          originalTravelPrice: 250,
          simplePricePerPerson: 100,
          flightIncluded: true,
          travelDate: TravelDateModel(
            departureDate: '2023-01-01',
            returnDate: '2023-01-10',
            days: 9,
            nights: 9,
          ),
          rooms: RoomsModel(
            overall: OverallRoomModel(
              boarding: 'Full Board',
              name: 'Deluxe Room',
              adultCount: 2,
              childrenCount: 1,
              sameBoarding: true,
            ),
            roomGroups: [
              RoomGroupModel(
                boarding: 'Full Board',
                name: 'Deluxe Room',
                quantity: 1,
              )
            ],
          ),
        ),
        latitude: 40.7128,
        longitude: -74.0060,
        category: 1,
        categoryType: 'Hotel',
      );

      final hotelEntity = mapper.mapFromModel(hotelModel);

      expect(hotelEntity.hotelId, '1');
      expect(hotelEntity.name, 'Test Hotel');
      expect(hotelEntity.destination, 'Test Destination');
      expect(hotelEntity.imageUrl, 'large.jpg');
      expect(hotelEntity.ratingScore, 4.5);
      expect(hotelEntity.isFavorite, false);
      expect(hotelEntity.days, 9);
      expect(hotelEntity.nights, 9);
      expect(hotelEntity.roomName, 'Deluxe Room');
      expect(hotelEntity.boarding, 'Full Board');
      expect(hotelEntity.adultCount, 2);
      expect(hotelEntity.childrenCount, 1);
      expect(hotelEntity.flightIncluded, true);
      expect(hotelEntity.totalPrice, 200);
      expect(hotelEntity.pricePerPerson, 100);
    });
  });
}