import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_response.freezed.dart';
part 'hotel_response.g.dart';

@freezed
class HotelResponse with _$HotelResponse {
  const factory HotelResponse({
    required List<HotelModel> hotels,
  }) = _HotelResponse;

  factory HotelResponse.fromJson(Map<String, dynamic> json) => _$HotelResponseFromJson(json);
}


@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    @JsonKey(name: 'hotel-id')
    required String hotelId,
    required String name,
    required String destination,
    required List<HotelImage> images,
    RatingInfo? ratingInfo,
    BestOffer? bestOffer,
    required double latitude,
    required double longitude,
    Analytics? analytics,
    required int category,
    @JsonKey(name: 'category-type')
     String? categoryType,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) => _$HotelModelFromJson(json);
}

@freezed
class HotelImage with _$HotelImage {
  const factory HotelImage({
    required String large,
    required String small,
  }) = _HotelImage;

  factory HotelImage.fromJson(Map<String, dynamic> json) => _$HotelImageFromJson(json);
}

@freezed
class RatingInfo with _$RatingInfo {
  const factory RatingInfo({
    required double score,
    required int reviewsCount,
    required String scoreDescription,
  }) = _RatingInfo;

  factory RatingInfo.fromJson(Map<String, dynamic> json) => _$RatingInfoFromJson(json);
}

@freezed
class BestOffer with _$BestOffer {
  const factory BestOffer({
    required int total,
    required int originalTravelPrice,
    required int simplePricePerPerson,
    required bool flightIncluded,
    required TravelDate travelDate,
    required Rooms rooms,
  }) = _BestOffer;

  factory BestOffer.fromJson(Map<String, dynamic> json) => _$BestOfferFromJson(json);
}

@freezed
class TravelDate with _$TravelDate {
  const factory TravelDate({
    required String departureDate,
    required String returnDate,
    required int days,
    required int nights,
  }) = _TravelDate;

  factory TravelDate.fromJson(Map<String, dynamic> json) => _$TravelDateFromJson(json);
}

@freezed
class Rooms with _$Rooms {
  const factory Rooms({
    required OverallRoom overall,
    required List<RoomGroup> roomGroups,
  }) = _Rooms;

  factory Rooms.fromJson(Map<String, dynamic> json) => _$RoomsFromJson(json);
}

@freezed
class OverallRoom with _$OverallRoom {
  const factory OverallRoom({
    required String boarding,
    required String name,
    required int adultCount,
    required int childrenCount,
    required bool sameBoarding,
  }) = _OverallRoom;

  factory OverallRoom.fromJson(Map<String, dynamic> json) => _$OverallRoomFromJson(json);
}

@freezed
class RoomGroup with _$RoomGroup {
  const factory RoomGroup({
    required String boarding,
    required String name,
    required int quantity,
  }) = _RoomGroup;

  factory RoomGroup.fromJson(Map<String, dynamic> json) => _$RoomGroupFromJson(json);
}

@freezed
class Analytics with _$Analytics {
  const factory Analytics({
    @JsonKey(name: 'select_item.item.0')
     AnalyticsItem? selectItem,
  }) = _Analytics;

  factory Analytics.fromJson(Map<String, dynamic> json) => _$AnalyticsFromJson(json);
}

@freezed
class AnalyticsItem with _$AnalyticsItem {
  const factory AnalyticsItem({
    required String currency,
    required String itemCategory,
    required String itemCategory2,
    required String itemId,
    required String itemName,
    required String itemRooms,
    required String price,
    required String quantity,
  }) = _AnalyticsItem;

  factory AnalyticsItem.fromJson(Map<String, dynamic> json) => _$AnalyticsItemFromJson(json);
}