import 'package:hotel_booking/base/mapper/mapper.dart';
import 'package:hotel_booking/features/hotel/data/local/models/favorite_hotel_model.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';

class FavoriteHotelMapper extends Mapper<FavoriteHotelModel, HotelEntity> {
  @override
  HotelEntity mapFromModel(FavoriteHotelModel type) {
    return HotelEntity(
      hotelId: type.hotelId,
      name: type.name,
      destination: type.destination,
      imageUrl: type.imageUrl,
      ratingScore: type.ratingScore,
      isFavorite: type.isFavorite,
      days: type.days,
      nights: type.nights,
      roomName: type.roomName,
      boarding: type.boarding,
      adultCount: type.adultCount,
      childrenCount: type.childrenCount,
      flightIncluded: type.flightIncluded,
      totalPrice: type.totalPrice,
      pricePerPerson: type.pricePerPerson,
    );
  }

  @override
  FavoriteHotelModel mapFromEntity(HotelEntity type) {
    return FavoriteHotelModel(
      hotelId: type.hotelId,
      name: type.name,
      destination: type.destination,
      imageUrl: type.imageUrl,
      ratingScore: type.ratingScore,
      isFavorite: type.isFavorite,
      days: type.days,
      nights: type.nights,
      roomName: type.roomName,
      boarding: type.boarding,
      adultCount: type.adultCount,
      childrenCount: type.childrenCount,
      flightIncluded: type.flightIncluded,
      totalPrice: type.totalPrice,
      pricePerPerson: type.pricePerPerson,
    );
  }
}
