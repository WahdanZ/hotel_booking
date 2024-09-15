import 'package:hotel_booking/features/hotel/data/local/models/favorite_hotel_model.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/add_favorite_hotel_use_case.dart';
import 'package:hotel_booking/features/hotel/domain/use_cases/remove_favorite_hotel_use_case.dart';
import 'package:mocktail/mocktail.dart';

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

HotelEntity createHotelEntity({
  String hotelId = '1',
  String name = 'Test Hotel',
  String location = 'Test Location',
  bool isFavorite = false,
  double ratingScore = 4.5,
  String imageUrl = 'https://example.com/hotel.jpg',
  String destination = 'Test Destination',
  int days = 3,
  int nights = 2,
  String roomName = 'Deluxe Room',
  String boarding = 'Full Board',
  int adultCount = 2,
  int childrenCount = 1,
  bool flightIncluded = true,
  int totalPrice = 30000,
  int pricePerPerson = 15000,
}) {
  return HotelEntity(
    hotelId: hotelId,
    name: name,
    isFavorite: isFavorite,
    ratingScore: ratingScore,
    imageUrl: imageUrl,
    destination: destination,
    days: days,
    nights: nights,
    roomName: roomName,
    boarding: boarding,
    adultCount: adultCount,
    childrenCount: childrenCount,
    flightIncluded: flightIncluded,
    totalPrice: totalPrice,
    pricePerPerson: pricePerPerson,
  );
}

FavoriteHotelModel createFavoriteHotelModel({
  String hotelId = '1',
  String name = 'Test Hotel',
  String location = 'Test Location',
  bool isFavorite = false,
  double ratingScore = 4.5,
  String imageUrl = 'https://example.com/hotel.jpg',
  String destination = 'Test Destination',
  int days = 3,
  int nights = 2,
  String roomName = 'Deluxe Room',
  String boarding = 'Full Board',
  int adultCount = 2,
  int childrenCount = 1,
  bool flightIncluded = true,
  int totalPrice = 30000,
  int pricePerPerson = 15000,
}) {
  return FavoriteHotelModel(
    hotelId: hotelId,
    name: name,
    isFavorite: isFavorite,
    ratingScore: ratingScore,
    imageUrl: imageUrl,
    destination: destination,
    days: days,
    nights: nights,
    roomName: roomName,
    boarding: boarding,
    adultCount: adultCount,
    childrenCount: childrenCount,
    flightIncluded: flightIncluded,
    totalPrice: totalPrice,
    pricePerPerson: pricePerPerson,
  );
}

class FakeAddFavoriteHotelParams extends Fake
    implements AddFavoriteHotelParams {}

class FakeRemoveFavoriteHotelParams extends Fake
    implements RemoveFavoriteHotelParams {}
