import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_entity.freezed.dart';

@freezed
class HotelEntity with _$HotelEntity {
  const factory HotelEntity({
    required String hotelId,
    required String name,
    required String destination,
    required List<HotelImageEntity> images,
    required RatingInfoEntity ratingInfo,
    required BestOfferEntity bestOffer,
    required double latitude,
    required double longitude,
    required int category,
    required String categoryType,
    @Default(false) bool isFavorite,
  }) = _HotelEntity;
}

@freezed
class HotelImageEntity with _$HotelImageEntity {
  const factory HotelImageEntity({
    required String large,
    required String small,
  }) = _HotelImageEntity;
}

@freezed
class RatingInfoEntity with _$RatingInfoEntity {
  const factory RatingInfoEntity({
    required double score,
    required int reviewsCount,
    required String scoreDescription,
  }) = _RatingInfoEntity;
}

@freezed
class BestOfferEntity with _$BestOfferEntity {
  const factory BestOfferEntity({
    required int total,
    required int originalTravelPrice,
    required int simplePricePerPerson,
    required bool flightIncluded,
    required TravelDateEntity travelDate,
    required RoomsEntity rooms,
  }) = _BestOfferEntity;
}

@freezed
class TravelDateEntity with _$TravelDateEntity {
  const factory TravelDateEntity({
    required String departureDate,
    required String returnDate,
    required int days,
    required int nights,
  }) = _TravelDateEntity;
}

@freezed
class RoomsEntity with _$RoomsEntity {
  const factory RoomsEntity({
    required OverallRoomEntity overall,
    required List<RoomGroupEntity> roomGroups,
  }) = _RoomsEntity;
}

@freezed
class OverallRoomEntity with _$OverallRoomEntity {
  const factory OverallRoomEntity({
    required String boarding,
    required String name,
    required int adultCount,
    required int childrenCount,
    required bool sameBoarding,
  }) = _OverallRoomEntity;
}

@freezed
class RoomGroupEntity with _$RoomGroupEntity {
  const factory RoomGroupEntity({
    required String boarding,
    required String name,
    required int quantity,
  }) = _RoomGroupEntity;
}