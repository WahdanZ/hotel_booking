// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelResponseImpl _$$HotelResponseImplFromJson(Map<String, dynamic> json) =>
    _$HotelResponseImpl(
      hotels: (json['hotels'] as List<dynamic>)
          .map((e) => HotelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HotelResponseImplToJson(_$HotelResponseImpl instance) =>
    <String, dynamic>{
      'hotels': instance.hotels,
    };

_$HotelModelImpl _$$HotelModelImplFromJson(Map<String, dynamic> json) =>
    _$HotelModelImpl(
      hotelId: json['hotel-id'] as String,
      name: json['name'] as String,
      destination: json['destination'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => HotelImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingInfo: json['rating-info'] == null
          ? null
          : RatingInfoModel.fromJson(
              json['rating-info'] as Map<String, dynamic>),
      bestOffer: json['best-offer'] == null
          ? null
          : BestOfferModel.fromJson(json['best-offer'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      analytics: json['analytics'] == null
          ? null
          : AnalyticsModel.fromJson(json['analytics'] as Map<String, dynamic>),
      category: (json['category'] as num).toInt(),
      categoryType: json['category-type'] as String?,
    );

Map<String, dynamic> _$$HotelModelImplToJson(_$HotelModelImpl instance) =>
    <String, dynamic>{
      'hotel-id': instance.hotelId,
      'name': instance.name,
      'destination': instance.destination,
      'images': instance.images,
      'rating-info': instance.ratingInfo,
      'best-offer': instance.bestOffer,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'analytics': instance.analytics,
      'category': instance.category,
      'category-type': instance.categoryType,
    };

_$HotelImageModelImpl _$$HotelImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelImageModelImpl(
      large: json['large'] as String,
      small: json['small'] as String,
    );

Map<String, dynamic> _$$HotelImageModelImplToJson(
        _$HotelImageModelImpl instance) =>
    <String, dynamic>{
      'large': instance.large,
      'small': instance.small,
    };

_$RatingInfoModelImpl _$$RatingInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RatingInfoModelImpl(
      score: (json['score'] as num).toDouble(),
      reviewsCount: (json['reviews-count'] as num).toInt(),
      scoreDescription: json['score-description'] as String,
    );

Map<String, dynamic> _$$RatingInfoModelImplToJson(
        _$RatingInfoModelImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'reviews-count': instance.reviewsCount,
      'score-description': instance.scoreDescription,
    };

_$BestOfferModelImpl _$$BestOfferModelImplFromJson(Map<String, dynamic> json) =>
    _$BestOfferModelImpl(
      total: (json['total'] as num).toInt(),
      originalTravelPrice: (json['original-travel-price'] as num).toInt(),
      simplePricePerPerson: (json['simple-price-per-person'] as num).toInt(),
      flightIncluded: json['flight-included'] as bool,
      travelDate:
          TravelDateModel.fromJson(json['travel-date'] as Map<String, dynamic>),
      rooms: RoomsModel.fromJson(json['rooms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BestOfferModelImplToJson(
        _$BestOfferModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'original-travel-price': instance.originalTravelPrice,
      'simple-price-per-person': instance.simplePricePerPerson,
      'flight-included': instance.flightIncluded,
      'travel-date': instance.travelDate,
      'rooms': instance.rooms,
    };

_$TravelDateModelImpl _$$TravelDateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelDateModelImpl(
      departureDate: json['departure-date'] as String,
      returnDate: json['return-date'] as String,
      days: (json['days'] as num).toInt(),
      nights: (json['nights'] as num).toInt(),
    );

Map<String, dynamic> _$$TravelDateModelImplToJson(
        _$TravelDateModelImpl instance) =>
    <String, dynamic>{
      'departure-date': instance.departureDate,
      'return-date': instance.returnDate,
      'days': instance.days,
      'nights': instance.nights,
    };

_$RoomsModelImpl _$$RoomsModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomsModelImpl(
      overall:
          OverallRoomModel.fromJson(json['overall'] as Map<String, dynamic>),
      roomGroups: (json['room-groups'] as List<dynamic>)
          .map((e) => RoomGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomsModelImplToJson(_$RoomsModelImpl instance) =>
    <String, dynamic>{
      'overall': instance.overall,
      'room-groups': instance.roomGroups,
    };

_$OverallRoomModelImpl _$$OverallRoomModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OverallRoomModelImpl(
      boarding: json['boarding'] as String,
      name: json['name'] as String,
      adultCount: (json['adult-count'] as num).toInt(),
      childrenCount: (json['children-count'] as num).toInt(),
      sameBoarding: json['same-boarding'] as bool,
    );

Map<String, dynamic> _$$OverallRoomModelImplToJson(
        _$OverallRoomModelImpl instance) =>
    <String, dynamic>{
      'boarding': instance.boarding,
      'name': instance.name,
      'adult-count': instance.adultCount,
      'children-count': instance.childrenCount,
      'same-boarding': instance.sameBoarding,
    };

_$RoomGroupModelImpl _$$RoomGroupModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomGroupModelImpl(
      boarding: json['boarding'] as String,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$RoomGroupModelImplToJson(
        _$RoomGroupModelImpl instance) =>
    <String, dynamic>{
      'boarding': instance.boarding,
      'name': instance.name,
      'quantity': instance.quantity,
    };

_$AnalyticsModelImpl _$$AnalyticsModelImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsModelImpl(
      selectItem: json['select_item.item.0'] == null
          ? null
          : AnalyticsItemModel.fromJson(
              json['select_item.item.0'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnalyticsModelImplToJson(
        _$AnalyticsModelImpl instance) =>
    <String, dynamic>{
      'select_item.item.0': instance.selectItem,
    };

_$AnalyticsItemModelImpl _$$AnalyticsItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsItemModelImpl(
      currency: json['currency'] as String,
      itemCategory: json['itemCategory'] as String,
      itemCategory2: json['itemCategory2'] as String,
      itemId: json['itemId'] as String,
      itemName: json['itemName'] as String,
      itemRooms: json['itemRooms'] as String,
      price: json['price'] as String,
      quantity: json['quantity'] as String,
    );

Map<String, dynamic> _$$AnalyticsItemModelImplToJson(
        _$AnalyticsItemModelImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'itemCategory': instance.itemCategory,
      'itemCategory2': instance.itemCategory2,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemRooms': instance.itemRooms,
      'price': instance.price,
      'quantity': instance.quantity,
    };
