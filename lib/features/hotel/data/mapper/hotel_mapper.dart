import 'package:hotel_booking/base/mapper/mapper.dart';
import 'package:hotel_booking/features/hotel/data/remote/models/hotel_response.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';

class HotelMapper implements Mapper<HotelModel,HotelEntity> {

  @override
  HotelModel mapFromEntity(HotelEntity type) {
    throw UnimplementedError();
  }

  @override
  HotelEntity mapFromModel(HotelModel model) {
    return HotelEntity(
      hotelId: model.hotelId,
      name: model.name,
      destination: model.destination,
      images: model.images.map((image) => HotelImageEntity(large: image.large, small: image.small)).toList(),
      ratingInfo: RatingInfoEntity(
        score: model.ratingInfo?.score ?? 0,
        reviewsCount: model.ratingInfo?.reviewsCount ?? 0,
        scoreDescription: model.ratingInfo?.scoreDescription?? '',
      ),
      bestOffer: BestOfferEntity(
        total: model.bestOffer?.total?? 0,
        originalTravelPrice: model.bestOffer?.originalTravelPrice ?? 0,
        simplePricePerPerson: model.bestOffer?.simplePricePerPerson ?? 0,
        flightIncluded: model.bestOffer?.flightIncluded ?? false,
        travelDate: TravelDateEntity(
          departureDate: model.bestOffer?.travelDate.departureDate ?? '',
          returnDate: model.bestOffer?.travelDate.returnDate ?? '',
          days: model.bestOffer?.travelDate.days?? 0,
          nights: model.bestOffer?.travelDate.nights ?? 0,
        ),
        rooms: RoomsEntity(
          overall: OverallRoomEntity(
            boarding: model.bestOffer?.rooms.overall.boarding?? '',
            name: model.bestOffer?.rooms.overall.name?? '',
            adultCount: model.bestOffer?.rooms.overall.adultCount ?? 0,
            childrenCount: model.bestOffer?.rooms.overall.childrenCount ?? 0,
            sameBoarding: model.bestOffer?.rooms.overall.sameBoarding ??  false,
          ),
          roomGroups: model.bestOffer?.rooms.roomGroups.map((room) => RoomGroupEntity(
            boarding: room.boarding,
            name: room.name,
            quantity: room.quantity,
          )).toList() ?? [],
        ),
      ),
      latitude: model.latitude,
      longitude: model.longitude,
      category: model.category,
      categoryType: model.categoryType ?? '',
    );
  }
}
