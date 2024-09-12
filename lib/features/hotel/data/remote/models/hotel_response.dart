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
    required List<HotelImageModel> images,
    RatingInfoModel? ratingInfo,
    BestOfferModel? bestOffer,
    required double latitude,
    required double longitude,
    AnalyticsModel? analytics,
    required int category,
    @JsonKey(name: 'category-type')
     String? categoryType,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) => _$HotelModelFromJson(json);
}

@freezed
class HotelImageModel with _$HotelImageModel {
  const factory HotelImageModel({
    required String large,
    required String small,
  }) = _HotelImageModel;

  factory HotelImageModel.fromJson(Map<String, dynamic> json) => _$HotelImageModelFromJson(json);
}

@freezed
class RatingInfoModel with _$RatingInfoModel {
  const factory RatingInfoModel({
    required double score,
    required int reviewsCount,
    required String scoreDescription,
  }) = _RatingInfoModel;

  factory RatingInfoModel.fromJson(Map<String, dynamic> json) => _$RatingInfoModelFromJson(json);
}

@freezed
class BestOfferModel with _$BestOfferModel {
  const factory BestOfferModel({
    required int total,
    required int originalTravelPrice,
    required int simplePricePerPerson,
    required bool flightIncluded,
    required TravelDateModel travelDate,
    required RoomsModel rooms,
  }) = _BestOfferModel;

  factory BestOfferModel.fromJson(Map<String, dynamic> json) => _$BestOfferModelFromJson(json);
}

@freezed
class TravelDateModel with _$TravelDateModel {
  const factory TravelDateModel({
    required String departureDate,
    required String returnDate,
    required int days,
    required int nights,
  }) = _TravelDateModel;

  factory TravelDateModel.fromJson(Map<String, dynamic> json) => _$TravelDateModelFromJson(json);
}

@freezed
class RoomsModel with _$RoomsModel {
  const factory RoomsModel({
    required OverallRoomModel overall,
    required List<RoomGroupModel> roomGroups,
  }) = _RoomsModel;

  factory RoomsModel.fromJson(Map<String, dynamic> json) => _$RoomsModelFromJson(json);
}

@freezed
class OverallRoomModel with _$OverallRoomModel {
  const factory OverallRoomModel({
    required String boarding,
    required String name,
    required int adultCount,
    required int childrenCount,
    required bool sameBoarding,
  }) = _OverallRoomModel;

  factory OverallRoomModel.fromJson(Map<String, dynamic> json) => _$OverallRoomModelFromJson(json);
}

@freezed
class RoomGroupModel with _$RoomGroupModel {
  const factory RoomGroupModel({
    required String boarding,
    required String name,
    required int quantity,
  }) = _RoomGroupModel;

  factory RoomGroupModel.fromJson(Map<String, dynamic> json) => _$RoomGroupModelFromJson(json);
}

@freezed
class AnalyticsModel with _$AnalyticsModel {
  const factory AnalyticsModel({
    @JsonKey(name: 'select_item.item.0')
    AnalyticsItemModel? selectItem,
  }) = _AnalyticsModel;

  factory AnalyticsModel.fromJson(Map<String, dynamic> json) => _$AnalyticsModelFromJson(json);
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

  factory AnalyticsItemModel.fromJson(Map<String, dynamic> json) => _$AnalyticsItemModelFromJson(json);
}