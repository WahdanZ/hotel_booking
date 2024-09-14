import 'package:hotel_booking/features/hotel/data/local/models/favorite_hotel_model.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';

HotelModel createHotelModel({String hotelId = '1'}) {
  return HotelModel(
    hotelId: hotelId,
    name: 'Test Hotel',
    destination: 'Test Destination',
    images: [const HotelImageModel(large: 'large.jpg', small: 'small.jpg')],
    ratingInfo: const RatingInfoModel(
      score: 4.5,
      reviewsCount: 100,
      scoreDescription: 'Excellent',
    ),
    bestOffer: const BestOfferModel(
      total: 10000,
      originalTravelPrice: 12000,
      simplePricePerPerson: 5000,
      flightIncluded: true,
      travelDate: TravelDateModel(
        departureDate: '2023-01-01',
        returnDate: '2023-01-07',
        days: 7,
        nights: 6,
      ),
      rooms: RoomsModel(
        overall: OverallRoomModel(
          boarding: 'All Inclusive',
          name: 'Deluxe Room',
          adultCount: 2,
          childrenCount: 1,
          sameBoarding: true,
        ),
        roomGroups: [],
      ),
    ),
    latitude: 0.0,
    longitude: 0.0,
    category: 5,
    categoryType: 'Luxury',
  );
}

HotelEntity createHotelEntity({String hotelId = '1', bool isFavorite = false}) {
  return HotelEntity(
    hotelId: hotelId,
    name: 'Test Hotel',
    destination: 'Test Destination',
    imageUrl: 'large.jpg',
    ratingScore: 4.5,
    isFavorite: isFavorite,
    days: 7,
    nights: 6,
    roomName: 'Deluxe Room',
    boarding: 'All Inclusive',
    adultCount: 2,
    childrenCount: 1,
    flightIncluded: true,
    totalPrice: 10000,
    pricePerPerson: 5000,
  );
}

FavoriteHotelModel createFavoriteHotelModel({String hotelId = '1'}) {
  return FavoriteHotelModel(
    hotelId: hotelId,
    name: 'Test Hotel',
    imageUrl: 'large.jpg',
    destination: 'Test Destination',
    ratingScore: 4.5,
    isFavorite: true,
    days: 7,
    nights: 6,
    roomName: 'Deluxe Room',
    boarding: 'All Inclusive',
    adultCount: 2,
    childrenCount: 1,
    flightIncluded: true,
    totalPrice: 10000,
    pricePerPerson: 5000,
  );
}
