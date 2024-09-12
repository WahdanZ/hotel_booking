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
          .map((e) => HotelImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingInfo: json['ratingInfo'] == null
          ? null
          : RatingInfo.fromJson(json['ratingInfo'] as Map<String, dynamic>),
      bestOffer: json['bestOffer'] == null
          ? null
          : BestOffer.fromJson(json['bestOffer'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      analytics: json['analytics'] == null
          ? null
          : Analytics.fromJson(json['analytics'] as Map<String, dynamic>),
      category: (json['category'] as num).toInt(),
      categoryType: json['category-type'] as String?,
    );

Map<String, dynamic> _$$HotelModelImplToJson(_$HotelModelImpl instance) =>
    <String, dynamic>{
      'hotel-id': instance.hotelId,
      'name': instance.name,
      'destination': instance.destination,
      'images': instance.images,
      'ratingInfo': instance.ratingInfo,
      'bestOffer': instance.bestOffer,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'analytics': instance.analytics,
      'category': instance.category,
      'category-type': instance.categoryType,
    };

_$HotelImageImpl _$$HotelImageImplFromJson(Map<String, dynamic> json) =>
    _$HotelImageImpl(
      large: json['large'] as String,
      small: json['small'] as String,
    );

Map<String, dynamic> _$$HotelImageImplToJson(_$HotelImageImpl instance) =>
    <String, dynamic>{
      'large': instance.large,
      'small': instance.small,
    };

_$RatingInfoImpl _$$RatingInfoImplFromJson(Map<String, dynamic> json) =>
    _$RatingInfoImpl(
      score: (json['score'] as num).toDouble(),
      reviewsCount: (json['reviewsCount'] as num).toInt(),
      scoreDescription: json['scoreDescription'] as String,
    );

Map<String, dynamic> _$$RatingInfoImplToJson(_$RatingInfoImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'reviewsCount': instance.reviewsCount,
      'scoreDescription': instance.scoreDescription,
    };

_$BestOfferImpl _$$BestOfferImplFromJson(Map<String, dynamic> json) =>
    _$BestOfferImpl(
      total: (json['total'] as num).toInt(),
      originalTravelPrice: (json['originalTravelPrice'] as num).toInt(),
      simplePricePerPerson: (json['simplePricePerPerson'] as num).toInt(),
      flightIncluded: json['flightIncluded'] as bool,
      travelDate:
          TravelDate.fromJson(json['travelDate'] as Map<String, dynamic>),
      rooms: Rooms.fromJson(json['rooms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BestOfferImplToJson(_$BestOfferImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'originalTravelPrice': instance.originalTravelPrice,
      'simplePricePerPerson': instance.simplePricePerPerson,
      'flightIncluded': instance.flightIncluded,
      'travelDate': instance.travelDate,
      'rooms': instance.rooms,
    };

_$TravelDateImpl _$$TravelDateImplFromJson(Map<String, dynamic> json) =>
    _$TravelDateImpl(
      departureDate: json['departureDate'] as String,
      returnDate: json['returnDate'] as String,
      days: (json['days'] as num).toInt(),
      nights: (json['nights'] as num).toInt(),
    );

Map<String, dynamic> _$$TravelDateImplToJson(_$TravelDateImpl instance) =>
    <String, dynamic>{
      'departureDate': instance.departureDate,
      'returnDate': instance.returnDate,
      'days': instance.days,
      'nights': instance.nights,
    };

_$RoomsImpl _$$RoomsImplFromJson(Map<String, dynamic> json) => _$RoomsImpl(
      overall: OverallRoom.fromJson(json['overall'] as Map<String, dynamic>),
      roomGroups: (json['roomGroups'] as List<dynamic>)
          .map((e) => RoomGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomsImplToJson(_$RoomsImpl instance) =>
    <String, dynamic>{
      'overall': instance.overall,
      'roomGroups': instance.roomGroups,
    };

_$OverallRoomImpl _$$OverallRoomImplFromJson(Map<String, dynamic> json) =>
    _$OverallRoomImpl(
      boarding: json['boarding'] as String,
      name: json['name'] as String,
      adultCount: (json['adultCount'] as num).toInt(),
      childrenCount: (json['childrenCount'] as num).toInt(),
      sameBoarding: json['sameBoarding'] as bool,
    );

Map<String, dynamic> _$$OverallRoomImplToJson(_$OverallRoomImpl instance) =>
    <String, dynamic>{
      'boarding': instance.boarding,
      'name': instance.name,
      'adultCount': instance.adultCount,
      'childrenCount': instance.childrenCount,
      'sameBoarding': instance.sameBoarding,
    };

_$RoomGroupImpl _$$RoomGroupImplFromJson(Map<String, dynamic> json) =>
    _$RoomGroupImpl(
      boarding: json['boarding'] as String,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$RoomGroupImplToJson(_$RoomGroupImpl instance) =>
    <String, dynamic>{
      'boarding': instance.boarding,
      'name': instance.name,
      'quantity': instance.quantity,
    };

_$AnalyticsImpl _$$AnalyticsImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsImpl(
      selectItem: json['select_item.item.0'] == null
          ? null
          : AnalyticsItem.fromJson(
              json['select_item.item.0'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnalyticsImplToJson(_$AnalyticsImpl instance) =>
    <String, dynamic>{
      'select_item.item.0': instance.selectItem,
    };

_$AnalyticsItemImpl _$$AnalyticsItemImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticsItemImpl(
      currency: json['currency'] as String,
      itemCategory: json['itemCategory'] as String,
      itemCategory2: json['itemCategory2'] as String,
      itemId: json['itemId'] as String,
      itemName: json['itemName'] as String,
      itemRooms: json['itemRooms'] as String,
      price: json['price'] as String,
      quantity: json['quantity'] as String,
    );

Map<String, dynamic> _$$AnalyticsItemImplToJson(_$AnalyticsItemImpl instance) =>
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
