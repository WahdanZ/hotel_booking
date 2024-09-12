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
      expect(hotelEntity.images.length, 1);
      expect(hotelEntity.images.first.large, 'large.jpg');
      expect(hotelEntity.images.first.small, 'small.jpg');
      expect(hotelEntity.ratingInfo.score, 4.5);
      expect(hotelEntity.ratingInfo.reviewsCount, 100);
      expect(hotelEntity.ratingInfo.scoreDescription, 'Excellent');
      expect(hotelEntity.bestOffer.total, 200);
      expect(hotelEntity.bestOffer.originalTravelPrice, 250);
      expect(hotelEntity.bestOffer.simplePricePerPerson, 100);
      expect(hotelEntity.bestOffer.flightIncluded, true);
      expect(hotelEntity.bestOffer.travelDate.departureDate, '2023-01-01');
      expect(hotelEntity.bestOffer.travelDate.returnDate, '2023-01-10');
      expect(hotelEntity.bestOffer.travelDate.days, 9);
      expect(hotelEntity.bestOffer.travelDate.nights, 9);
      expect(hotelEntity.bestOffer.rooms.overall.boarding, 'Full Board');
      expect(hotelEntity.bestOffer.rooms.overall.name, 'Deluxe Room');
      expect(hotelEntity.bestOffer.rooms.overall.adultCount, 2);
      expect(hotelEntity.bestOffer.rooms.overall.childrenCount, 1);
      expect(hotelEntity.bestOffer.rooms.overall.sameBoarding, true);
      expect(hotelEntity.bestOffer.rooms.roomGroups.length, 1);
      expect(hotelEntity.bestOffer.rooms.roomGroups.first.boarding, 'Full Board');
      expect(hotelEntity.bestOffer.rooms.roomGroups.first.name, 'Deluxe Room');
      expect(hotelEntity.bestOffer.rooms.roomGroups.first.quantity, 1);
      expect(hotelEntity.latitude, 40.7128);
      expect(hotelEntity.longitude, -74.0060);
      expect(hotelEntity.category, 1);
      expect(hotelEntity.categoryType, 'Hotel');
    });
  });
}