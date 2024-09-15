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
      imageUrl: model.images.isNotEmpty ? model.images.first.large : '',
      ratingScore: model.ratingInfo?.score ?? 0.0,
      isFavorite: false,
      days: model.bestOffer?.travelDate.days ?? 0,
      nights: model.bestOffer?.travelDate.nights ?? 0,
      roomName: model.bestOffer?.rooms.overall.name ?? '',
      boarding: model.bestOffer?.rooms.overall.boarding ?? '',
      adultCount: model.bestOffer?.rooms.overall.adultCount ?? 0,
      childrenCount: model.bestOffer?.rooms.overall.childrenCount ?? 0,
      flightIncluded: model.bestOffer?.flightIncluded ?? false,
      totalPrice: model.bestOffer?.total ?? 0,
      pricePerPerson: model.bestOffer?.simplePricePerPerson ?? 0,
    );
  }
}
