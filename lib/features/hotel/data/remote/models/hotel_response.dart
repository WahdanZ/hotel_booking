import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_response.freezed.dart';
part 'hotel_response.g.dart';

@freezed
class HotelResponse with _$HotelResponse {
  const factory HotelResponse({
    required List<HotelModel> hotels,
  }) = _HotelResponse;

  factory HotelResponse.fromJson(Map<String, dynamic> json) =>
      _$HotelResponseFromJson(json);
}

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    @JsonKey(name: 'hotel-id') required String hotelId,
    required String name,
    required String destination,
    required List<HotelImageModel> images,
    @JsonKey(name: 'rating-info') RatingInfoModel? ratingInfo,
    @JsonKey(name: 'best-offer') BestOfferModel? bestOffer,
    required double latitude,
    required double longitude,
    AnalyticsModel? analytics,
    required int category,
    @JsonKey(name: 'category-type') String? categoryType,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}

@freezed
class HotelImageModel with _$HotelImageModel {
  const factory HotelImageModel({
    required String large,
    required String small,
  }) = _HotelImageModel;

  factory HotelImageModel.fromJson(Map<String, dynamic> json) =>
      _$HotelImageModelFromJson(json);
}

@freezed
class RatingInfoModel with _$RatingInfoModel {
  const factory RatingInfoModel({
    required double score,
    @JsonKey(name: 'reviews-count') required int reviewsCount,
    @JsonKey(name: 'score-description') required String scoreDescription,
  }) = _RatingInfoModel;

  factory RatingInfoModel.fromJson(Map<String, dynamic> json) =>
      _$RatingInfoModelFromJson(json);
}

@freezed
class BestOfferModel with _$BestOfferModel {
  const factory BestOfferModel({
    required int total,
    @JsonKey(name: 'original-travel-price') required int originalTravelPrice,
    @JsonKey(name: 'simple-price-per-person') required int simplePricePerPerson,
    @JsonKey(name: 'flight-included') required bool flightIncluded,
    @JsonKey(name: 'travel-date') required TravelDateModel travelDate,
    required RoomsModel rooms,
  }) = _BestOfferModel;

  factory BestOfferModel.fromJson(Map<String, dynamic> json) =>
      _$BestOfferModelFromJson(json);
}

@freezed
class TravelDateModel with _$TravelDateModel {
  const factory TravelDateModel({
    @JsonKey(name: 'departure-date') required String departureDate,
    @JsonKey(name: 'return-date') required String returnDate,
    required int days,
    required int nights,
  }) = _TravelDateModel;

  factory TravelDateModel.fromJson(Map<String, dynamic> json) =>
      _$TravelDateModelFromJson(json);
}

@freezed
class RoomsModel with _$RoomsModel {
  const factory RoomsModel({
    @JsonKey(name: 'overall') required OverallRoomModel overall,
    @JsonKey(name: 'room-groups') required List<RoomGroupModel> roomGroups,
  }) = _RoomsModel;

  factory RoomsModel.fromJson(Map<String, dynamic> json) =>
      _$RoomsModelFromJson(json);
}

@freezed
class OverallRoomModel with _$OverallRoomModel {
  const factory OverallRoomModel({
    required String boarding,
    required String name,
    @JsonKey(name: 'adult-count') required int adultCount,
    @JsonKey(name: 'children-count') required int childrenCount,
    @JsonKey(name: 'same-boarding') required bool sameBoarding,
  }) = _OverallRoomModel;

  factory OverallRoomModel.fromJson(Map<String, dynamic> json) =>
      _$OverallRoomModelFromJson(json);
}

@freezed
class RoomGroupModel with _$RoomGroupModel {
  const factory RoomGroupModel({
    required String boarding,
    required String name,
    required int quantity,
  }) = _RoomGroupModel;

  factory RoomGroupModel.fromJson(Map<String, dynamic> json) =>
      _$RoomGroupModelFromJson(json);
}

@freezed
class AnalyticsModel with _$AnalyticsModel {
  const factory AnalyticsModel({
    @JsonKey(name: 'select_item.item.0') AnalyticsItemModel? selectItem,
  }) = _AnalyticsModel;

  factory AnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsModelFromJson(json);
}

@freezed
class AnalyticsItemModel with _$AnalyticsItemModel {
  const factory AnalyticsItemModel({
    required String currency,
    required String itemCategory,
    required String itemCategory2,
    required String itemId,
    required String itemName,
    required String itemRooms,
    required String price,
    required String quantity,
  }) = _AnalyticsItemModel;

  factory AnalyticsItemModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsItemModelFromJson(json);
}
