import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';

const hotelResponse = HotelResponse(
  hotels: [
    HotelModel(
      hotelId: '35489-giata',
      name: 'Can Picafort Palace',
      categoryType: 'dots',
      destination: 'Can Picafort, Mallorca, Spanien',
      category: 4,
      latitude: 39.764034,
      longitude: 3.1490614,
      bestOffer: BestOfferModel(
          total: 84400,
          originalTravelPrice: 84400,
          simplePricePerPerson: 42200,
          flightIncluded: true,
          travelDate: TravelDateModel(
            days: 8,
            departureDate: '2024-10-15',
            returnDate: '2024-10-22', nights: 7,
          ), rooms: RoomsModel(
        roomGroups: [
          RoomGroupModel(
            boarding: 'Ohne Verpflegung',
            name: 'Apartment',
            quantity: 1,
          ),
        ], overall: OverallRoomModel(
        boarding: 'Ohne Verpflegung',
        name: 'Apartment',
        adultCount: 2,
        childrenCount: 0,
        sameBoarding: true,
      ),
      )),
      images: [
        HotelImageModel(
          large: 'https://image-url-large.jpeg',
          small: 'https://image-url-small.jpeg',
        ),
      ],
      ratingInfo: RatingInfoModel(
        reviewsCount: 381,
        score: 4.2,
        scoreDescription: 'Sehr Gut',
      ),
    ),
  ],
);

const hotelEntity = HotelEntity(
  hotelId: '35489-giata',
  name: 'Can Picafort Palace',
  destination: 'Can Picafort, Mallorca, Spanien',
  category: 4,
  latitude: 39.764034,
  longitude: 3.1490614,
  bestOffer: BestOfferEntity(
    total: 84400,
    originalTravelPrice: 84400,
    simplePricePerPerson: 42200,
    flightIncluded: true,
    travelDate: TravelDateEntity(
      days: 8,
      departureDate: '2024-10-15',
      returnDate: '2024-10-22', nights: 7,
    ), rooms: RoomsEntity(
    roomGroups: [
      RoomGroupEntity(
        boarding: 'Ohne Verpflegung',
        name: 'Apartment',
        quantity: 1,
      ),
    ], overall: OverallRoomEntity(
    boarding: 'Ohne Verpflegung',
    name: 'Apartment',
    adultCount: 2,
    childrenCount: 0,
    sameBoarding: true,
  ),
  ),
  ),
  images: [
    HotelImageEntity(
      large: 'https://image-url-large.jpeg',
      small: 'https://image-url-small.jpeg',
    ),
  ],
  ratingInfo: RatingInfoEntity(
    reviewsCount: 381,
    score: 4.2,
    scoreDescription: 'Sehr Gut',
  ), categoryType: 'dots',
);