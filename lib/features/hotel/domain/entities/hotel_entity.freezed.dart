// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HotelEntity {
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  List<HotelImageEntity> get images => throw _privateConstructorUsedError;
  RatingInfoEntity get ratingInfo => throw _privateConstructorUsedError;
  BestOfferEntity get bestOffer => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  String get categoryType => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelEntityCopyWith<HotelEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelEntityCopyWith<$Res> {
  factory $HotelEntityCopyWith(
          HotelEntity value, $Res Function(HotelEntity) then) =
      _$HotelEntityCopyWithImpl<$Res, HotelEntity>;
  @useResult
  $Res call(
      {String hotelId,
      String name,
      String destination,
      List<HotelImageEntity> images,
      RatingInfoEntity ratingInfo,
      BestOfferEntity bestOffer,
      double latitude,
      double longitude,
      int category,
      String categoryType,
      bool isFavorite});

  $RatingInfoEntityCopyWith<$Res> get ratingInfo;
  $BestOfferEntityCopyWith<$Res> get bestOffer;
}

/// @nodoc
class _$HotelEntityCopyWithImpl<$Res, $Val extends HotelEntity>
    implements $HotelEntityCopyWith<$Res> {
  _$HotelEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? name = null,
    Object? destination = null,
    Object? images = null,
    Object? ratingInfo = null,
    Object? bestOffer = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? category = null,
    Object? categoryType = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HotelImageEntity>,
      ratingInfo: null == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfoEntity,
      bestOffer: null == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOfferEntity,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingInfoEntityCopyWith<$Res> get ratingInfo {
    return $RatingInfoEntityCopyWith<$Res>(_value.ratingInfo, (value) {
      return _then(_value.copyWith(ratingInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BestOfferEntityCopyWith<$Res> get bestOffer {
    return $BestOfferEntityCopyWith<$Res>(_value.bestOffer, (value) {
      return _then(_value.copyWith(bestOffer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelEntityImplCopyWith<$Res>
    implements $HotelEntityCopyWith<$Res> {
  factory _$$HotelEntityImplCopyWith(
          _$HotelEntityImpl value, $Res Function(_$HotelEntityImpl) then) =
      __$$HotelEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hotelId,
      String name,
      String destination,
      List<HotelImageEntity> images,
      RatingInfoEntity ratingInfo,
      BestOfferEntity bestOffer,
      double latitude,
      double longitude,
      int category,
      String categoryType,
      bool isFavorite});

  @override
  $RatingInfoEntityCopyWith<$Res> get ratingInfo;
  @override
  $BestOfferEntityCopyWith<$Res> get bestOffer;
}

/// @nodoc
class __$$HotelEntityImplCopyWithImpl<$Res>
    extends _$HotelEntityCopyWithImpl<$Res, _$HotelEntityImpl>
    implements _$$HotelEntityImplCopyWith<$Res> {
  __$$HotelEntityImplCopyWithImpl(
      _$HotelEntityImpl _value, $Res Function(_$HotelEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? name = null,
    Object? destination = null,
    Object? images = null,
    Object? ratingInfo = null,
    Object? bestOffer = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? category = null,
    Object? categoryType = null,
    Object? isFavorite = null,
  }) {
    return _then(_$HotelEntityImpl(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HotelImageEntity>,
      ratingInfo: null == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfoEntity,
      bestOffer: null == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOfferEntity,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HotelEntityImpl implements _HotelEntity {
  const _$HotelEntityImpl(
      {required this.hotelId,
      required this.name,
      required this.destination,
      required final List<HotelImageEntity> images,
      required this.ratingInfo,
      required this.bestOffer,
      required this.latitude,
      required this.longitude,
      required this.category,
      required this.categoryType,
      this.isFavorite = false})
      : _images = images;

  @override
  final String hotelId;
  @override
  final String name;
  @override
  final String destination;
  final List<HotelImageEntity> _images;
  @override
  List<HotelImageEntity> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final RatingInfoEntity ratingInfo;
  @override
  final BestOfferEntity bestOffer;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int category;
  @override
  final String categoryType;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'HotelEntity(hotelId: $hotelId, name: $name, destination: $destination, images: $images, ratingInfo: $ratingInfo, bestOffer: $bestOffer, latitude: $latitude, longitude: $longitude, category: $category, categoryType: $categoryType, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelEntityImpl &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.ratingInfo, ratingInfo) ||
                other.ratingInfo == ratingInfo) &&
            (identical(other.bestOffer, bestOffer) ||
                other.bestOffer == bestOffer) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hotelId,
      name,
      destination,
      const DeepCollectionEquality().hash(_images),
      ratingInfo,
      bestOffer,
      latitude,
      longitude,
      category,
      categoryType,
      isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelEntityImplCopyWith<_$HotelEntityImpl> get copyWith =>
      __$$HotelEntityImplCopyWithImpl<_$HotelEntityImpl>(this, _$identity);
}

abstract class _HotelEntity implements HotelEntity {
  const factory _HotelEntity(
      {required final String hotelId,
      required final String name,
      required final String destination,
      required final List<HotelImageEntity> images,
      required final RatingInfoEntity ratingInfo,
      required final BestOfferEntity bestOffer,
      required final double latitude,
      required final double longitude,
      required final int category,
      required final String categoryType,
      final bool isFavorite}) = _$HotelEntityImpl;

  @override
  String get hotelId;
  @override
  String get name;
  @override
  String get destination;
  @override
  List<HotelImageEntity> get images;
  @override
  RatingInfoEntity get ratingInfo;
  @override
  BestOfferEntity get bestOffer;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  int get category;
  @override
  String get categoryType;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$HotelEntityImplCopyWith<_$HotelEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HotelImageEntity {
  String get large => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelImageEntityCopyWith<HotelImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelImageEntityCopyWith<$Res> {
  factory $HotelImageEntityCopyWith(
          HotelImageEntity value, $Res Function(HotelImageEntity) then) =
      _$HotelImageEntityCopyWithImpl<$Res, HotelImageEntity>;
  @useResult
  $Res call({String large, String small});
}

/// @nodoc
class _$HotelImageEntityCopyWithImpl<$Res, $Val extends HotelImageEntity>
    implements $HotelImageEntityCopyWith<$Res> {
  _$HotelImageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? small = null,
  }) {
    return _then(_value.copyWith(
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelImageEntityImplCopyWith<$Res>
    implements $HotelImageEntityCopyWith<$Res> {
  factory _$$HotelImageEntityImplCopyWith(_$HotelImageEntityImpl value,
          $Res Function(_$HotelImageEntityImpl) then) =
      __$$HotelImageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String large, String small});
}

/// @nodoc
class __$$HotelImageEntityImplCopyWithImpl<$Res>
    extends _$HotelImageEntityCopyWithImpl<$Res, _$HotelImageEntityImpl>
    implements _$$HotelImageEntityImplCopyWith<$Res> {
  __$$HotelImageEntityImplCopyWithImpl(_$HotelImageEntityImpl _value,
      $Res Function(_$HotelImageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? small = null,
  }) {
    return _then(_$HotelImageEntityImpl(
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HotelImageEntityImpl implements _HotelImageEntity {
  const _$HotelImageEntityImpl({required this.large, required this.small});

  @override
  final String large;
  @override
  final String small;

  @override
  String toString() {
    return 'HotelImageEntity(large: $large, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelImageEntityImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelImageEntityImplCopyWith<_$HotelImageEntityImpl> get copyWith =>
      __$$HotelImageEntityImplCopyWithImpl<_$HotelImageEntityImpl>(
          this, _$identity);
}

abstract class _HotelImageEntity implements HotelImageEntity {
  const factory _HotelImageEntity(
      {required final String large,
      required final String small}) = _$HotelImageEntityImpl;

  @override
  String get large;
  @override
  String get small;
  @override
  @JsonKey(ignore: true)
  _$$HotelImageEntityImplCopyWith<_$HotelImageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RatingInfoEntity {
  double get score => throw _privateConstructorUsedError;
  int get reviewsCount => throw _privateConstructorUsedError;
  String get scoreDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingInfoEntityCopyWith<RatingInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingInfoEntityCopyWith<$Res> {
  factory $RatingInfoEntityCopyWith(
          RatingInfoEntity value, $Res Function(RatingInfoEntity) then) =
      _$RatingInfoEntityCopyWithImpl<$Res, RatingInfoEntity>;
  @useResult
  $Res call({double score, int reviewsCount, String scoreDescription});
}

/// @nodoc
class _$RatingInfoEntityCopyWithImpl<$Res, $Val extends RatingInfoEntity>
    implements $RatingInfoEntityCopyWith<$Res> {
  _$RatingInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? reviewsCount = null,
    Object? scoreDescription = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      scoreDescription: null == scoreDescription
          ? _value.scoreDescription
          : scoreDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingInfoEntityImplCopyWith<$Res>
    implements $RatingInfoEntityCopyWith<$Res> {
  factory _$$RatingInfoEntityImplCopyWith(_$RatingInfoEntityImpl value,
          $Res Function(_$RatingInfoEntityImpl) then) =
      __$$RatingInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double score, int reviewsCount, String scoreDescription});
}

/// @nodoc
class __$$RatingInfoEntityImplCopyWithImpl<$Res>
    extends _$RatingInfoEntityCopyWithImpl<$Res, _$RatingInfoEntityImpl>
    implements _$$RatingInfoEntityImplCopyWith<$Res> {
  __$$RatingInfoEntityImplCopyWithImpl(_$RatingInfoEntityImpl _value,
      $Res Function(_$RatingInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? reviewsCount = null,
    Object? scoreDescription = null,
  }) {
    return _then(_$RatingInfoEntityImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      scoreDescription: null == scoreDescription
          ? _value.scoreDescription
          : scoreDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RatingInfoEntityImpl implements _RatingInfoEntity {
  const _$RatingInfoEntityImpl(
      {required this.score,
      required this.reviewsCount,
      required this.scoreDescription});

  @override
  final double score;
  @override
  final int reviewsCount;
  @override
  final String scoreDescription;

  @override
  String toString() {
    return 'RatingInfoEntity(score: $score, reviewsCount: $reviewsCount, scoreDescription: $scoreDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingInfoEntityImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.scoreDescription, scoreDescription) ||
                other.scoreDescription == scoreDescription));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, score, reviewsCount, scoreDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingInfoEntityImplCopyWith<_$RatingInfoEntityImpl> get copyWith =>
      __$$RatingInfoEntityImplCopyWithImpl<_$RatingInfoEntityImpl>(
          this, _$identity);
}

abstract class _RatingInfoEntity implements RatingInfoEntity {
  const factory _RatingInfoEntity(
      {required final double score,
      required final int reviewsCount,
      required final String scoreDescription}) = _$RatingInfoEntityImpl;

  @override
  double get score;
  @override
  int get reviewsCount;
  @override
  String get scoreDescription;
  @override
  @JsonKey(ignore: true)
  _$$RatingInfoEntityImplCopyWith<_$RatingInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BestOfferEntity {
  int get total => throw _privateConstructorUsedError;
  int get originalTravelPrice => throw _privateConstructorUsedError;
  int get simplePricePerPerson => throw _privateConstructorUsedError;
  bool get flightIncluded => throw _privateConstructorUsedError;
  TravelDateEntity get travelDate => throw _privateConstructorUsedError;
  RoomsEntity get rooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestOfferEntityCopyWith<BestOfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOfferEntityCopyWith<$Res> {
  factory $BestOfferEntityCopyWith(
          BestOfferEntity value, $Res Function(BestOfferEntity) then) =
      _$BestOfferEntityCopyWithImpl<$Res, BestOfferEntity>;
  @useResult
  $Res call(
      {int total,
      int originalTravelPrice,
      int simplePricePerPerson,
      bool flightIncluded,
      TravelDateEntity travelDate,
      RoomsEntity rooms});

  $TravelDateEntityCopyWith<$Res> get travelDate;
  $RoomsEntityCopyWith<$Res> get rooms;
}

/// @nodoc
class _$BestOfferEntityCopyWithImpl<$Res, $Val extends BestOfferEntity>
    implements $BestOfferEntityCopyWith<$Res> {
  _$BestOfferEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? originalTravelPrice = null,
    Object? simplePricePerPerson = null,
    Object? flightIncluded = null,
    Object? travelDate = null,
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      originalTravelPrice: null == originalTravelPrice
          ? _value.originalTravelPrice
          : originalTravelPrice // ignore: cast_nullable_to_non_nullable
              as int,
      simplePricePerPerson: null == simplePricePerPerson
          ? _value.simplePricePerPerson
          : simplePricePerPerson // ignore: cast_nullable_to_non_nullable
              as int,
      flightIncluded: null == flightIncluded
          ? _value.flightIncluded
          : flightIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      travelDate: null == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as TravelDateEntity,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelDateEntityCopyWith<$Res> get travelDate {
    return $TravelDateEntityCopyWith<$Res>(_value.travelDate, (value) {
      return _then(_value.copyWith(travelDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsEntityCopyWith<$Res> get rooms {
    return $RoomsEntityCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BestOfferEntityImplCopyWith<$Res>
    implements $BestOfferEntityCopyWith<$Res> {
  factory _$$BestOfferEntityImplCopyWith(_$BestOfferEntityImpl value,
          $Res Function(_$BestOfferEntityImpl) then) =
      __$$BestOfferEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int originalTravelPrice,
      int simplePricePerPerson,
      bool flightIncluded,
      TravelDateEntity travelDate,
      RoomsEntity rooms});

  @override
  $TravelDateEntityCopyWith<$Res> get travelDate;
  @override
  $RoomsEntityCopyWith<$Res> get rooms;
}

/// @nodoc
class __$$BestOfferEntityImplCopyWithImpl<$Res>
    extends _$BestOfferEntityCopyWithImpl<$Res, _$BestOfferEntityImpl>
    implements _$$BestOfferEntityImplCopyWith<$Res> {
  __$$BestOfferEntityImplCopyWithImpl(
      _$BestOfferEntityImpl _value, $Res Function(_$BestOfferEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? originalTravelPrice = null,
    Object? simplePricePerPerson = null,
    Object? flightIncluded = null,
    Object? travelDate = null,
    Object? rooms = null,
  }) {
    return _then(_$BestOfferEntityImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      originalTravelPrice: null == originalTravelPrice
          ? _value.originalTravelPrice
          : originalTravelPrice // ignore: cast_nullable_to_non_nullable
              as int,
      simplePricePerPerson: null == simplePricePerPerson
          ? _value.simplePricePerPerson
          : simplePricePerPerson // ignore: cast_nullable_to_non_nullable
              as int,
      flightIncluded: null == flightIncluded
          ? _value.flightIncluded
          : flightIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      travelDate: null == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as TravelDateEntity,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsEntity,
    ));
  }
}

/// @nodoc

class _$BestOfferEntityImpl implements _BestOfferEntity {
  const _$BestOfferEntityImpl(
      {required this.total,
      required this.originalTravelPrice,
      required this.simplePricePerPerson,
      required this.flightIncluded,
      required this.travelDate,
      required this.rooms});

  @override
  final int total;
  @override
  final int originalTravelPrice;
  @override
  final int simplePricePerPerson;
  @override
  final bool flightIncluded;
  @override
  final TravelDateEntity travelDate;
  @override
  final RoomsEntity rooms;

  @override
  String toString() {
    return 'BestOfferEntity(total: $total, originalTravelPrice: $originalTravelPrice, simplePricePerPerson: $simplePricePerPerson, flightIncluded: $flightIncluded, travelDate: $travelDate, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestOfferEntityImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.originalTravelPrice, originalTravelPrice) ||
                other.originalTravelPrice == originalTravelPrice) &&
            (identical(other.simplePricePerPerson, simplePricePerPerson) ||
                other.simplePricePerPerson == simplePricePerPerson) &&
            (identical(other.flightIncluded, flightIncluded) ||
                other.flightIncluded == flightIncluded) &&
            (identical(other.travelDate, travelDate) ||
                other.travelDate == travelDate) &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total, originalTravelPrice,
      simplePricePerPerson, flightIncluded, travelDate, rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestOfferEntityImplCopyWith<_$BestOfferEntityImpl> get copyWith =>
      __$$BestOfferEntityImplCopyWithImpl<_$BestOfferEntityImpl>(
          this, _$identity);
}

abstract class _BestOfferEntity implements BestOfferEntity {
  const factory _BestOfferEntity(
      {required final int total,
      required final int originalTravelPrice,
      required final int simplePricePerPerson,
      required final bool flightIncluded,
      required final TravelDateEntity travelDate,
      required final RoomsEntity rooms}) = _$BestOfferEntityImpl;

  @override
  int get total;
  @override
  int get originalTravelPrice;
  @override
  int get simplePricePerPerson;
  @override
  bool get flightIncluded;
  @override
  TravelDateEntity get travelDate;
  @override
  RoomsEntity get rooms;
  @override
  @JsonKey(ignore: true)
  _$$BestOfferEntityImplCopyWith<_$BestOfferEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TravelDateEntity {
  String get departureDate => throw _privateConstructorUsedError;
  String get returnDate => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  int get nights => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelDateEntityCopyWith<TravelDateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDateEntityCopyWith<$Res> {
  factory $TravelDateEntityCopyWith(
          TravelDateEntity value, $Res Function(TravelDateEntity) then) =
      _$TravelDateEntityCopyWithImpl<$Res, TravelDateEntity>;
  @useResult
  $Res call({String departureDate, String returnDate, int days, int nights});
}

/// @nodoc
class _$TravelDateEntityCopyWithImpl<$Res, $Val extends TravelDateEntity>
    implements $TravelDateEntityCopyWith<$Res> {
  _$TravelDateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDate = null,
    Object? returnDate = null,
    Object? days = null,
    Object? nights = null,
  }) {
    return _then(_value.copyWith(
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelDateEntityImplCopyWith<$Res>
    implements $TravelDateEntityCopyWith<$Res> {
  factory _$$TravelDateEntityImplCopyWith(_$TravelDateEntityImpl value,
          $Res Function(_$TravelDateEntityImpl) then) =
      __$$TravelDateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String departureDate, String returnDate, int days, int nights});
}

/// @nodoc
class __$$TravelDateEntityImplCopyWithImpl<$Res>
    extends _$TravelDateEntityCopyWithImpl<$Res, _$TravelDateEntityImpl>
    implements _$$TravelDateEntityImplCopyWith<$Res> {
  __$$TravelDateEntityImplCopyWithImpl(_$TravelDateEntityImpl _value,
      $Res Function(_$TravelDateEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDate = null,
    Object? returnDate = null,
    Object? days = null,
    Object? nights = null,
  }) {
    return _then(_$TravelDateEntityImpl(
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TravelDateEntityImpl implements _TravelDateEntity {
  const _$TravelDateEntityImpl(
      {required this.departureDate,
      required this.returnDate,
      required this.days,
      required this.nights});

  @override
  final String departureDate;
  @override
  final String returnDate;
  @override
  final int days;
  @override
  final int nights;

  @override
  String toString() {
    return 'TravelDateEntity(departureDate: $departureDate, returnDate: $returnDate, days: $days, nights: $nights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDateEntityImpl &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.nights, nights) || other.nights == nights));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, departureDate, returnDate, days, nights);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDateEntityImplCopyWith<_$TravelDateEntityImpl> get copyWith =>
      __$$TravelDateEntityImplCopyWithImpl<_$TravelDateEntityImpl>(
          this, _$identity);
}

abstract class _TravelDateEntity implements TravelDateEntity {
  const factory _TravelDateEntity(
      {required final String departureDate,
      required final String returnDate,
      required final int days,
      required final int nights}) = _$TravelDateEntityImpl;

  @override
  String get departureDate;
  @override
  String get returnDate;
  @override
  int get days;
  @override
  int get nights;
  @override
  @JsonKey(ignore: true)
  _$$TravelDateEntityImplCopyWith<_$TravelDateEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomsEntity {
  OverallRoomEntity get overall => throw _privateConstructorUsedError;
  List<RoomGroupEntity> get roomGroups => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomsEntityCopyWith<RoomsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsEntityCopyWith<$Res> {
  factory $RoomsEntityCopyWith(
          RoomsEntity value, $Res Function(RoomsEntity) then) =
      _$RoomsEntityCopyWithImpl<$Res, RoomsEntity>;
  @useResult
  $Res call({OverallRoomEntity overall, List<RoomGroupEntity> roomGroups});

  $OverallRoomEntityCopyWith<$Res> get overall;
}

/// @nodoc
class _$RoomsEntityCopyWithImpl<$Res, $Val extends RoomsEntity>
    implements $RoomsEntityCopyWith<$Res> {
  _$RoomsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = null,
    Object? roomGroups = null,
  }) {
    return _then(_value.copyWith(
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as OverallRoomEntity,
      roomGroups: null == roomGroups
          ? _value.roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as List<RoomGroupEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OverallRoomEntityCopyWith<$Res> get overall {
    return $OverallRoomEntityCopyWith<$Res>(_value.overall, (value) {
      return _then(_value.copyWith(overall: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomsEntityImplCopyWith<$Res>
    implements $RoomsEntityCopyWith<$Res> {
  factory _$$RoomsEntityImplCopyWith(
          _$RoomsEntityImpl value, $Res Function(_$RoomsEntityImpl) then) =
      __$$RoomsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OverallRoomEntity overall, List<RoomGroupEntity> roomGroups});

  @override
  $OverallRoomEntityCopyWith<$Res> get overall;
}

/// @nodoc
class __$$RoomsEntityImplCopyWithImpl<$Res>
    extends _$RoomsEntityCopyWithImpl<$Res, _$RoomsEntityImpl>
    implements _$$RoomsEntityImplCopyWith<$Res> {
  __$$RoomsEntityImplCopyWithImpl(
      _$RoomsEntityImpl _value, $Res Function(_$RoomsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = null,
    Object? roomGroups = null,
  }) {
    return _then(_$RoomsEntityImpl(
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as OverallRoomEntity,
      roomGroups: null == roomGroups
          ? _value._roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as List<RoomGroupEntity>,
    ));
  }
}

/// @nodoc

class _$RoomsEntityImpl implements _RoomsEntity {
  const _$RoomsEntityImpl(
      {required this.overall, required final List<RoomGroupEntity> roomGroups})
      : _roomGroups = roomGroups;

  @override
  final OverallRoomEntity overall;
  final List<RoomGroupEntity> _roomGroups;
  @override
  List<RoomGroupEntity> get roomGroups {
    if (_roomGroups is EqualUnmodifiableListView) return _roomGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomGroups);
  }

  @override
  String toString() {
    return 'RoomsEntity(overall: $overall, roomGroups: $roomGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsEntityImpl &&
            (identical(other.overall, overall) || other.overall == overall) &&
            const DeepCollectionEquality()
                .equals(other._roomGroups, _roomGroups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, overall, const DeepCollectionEquality().hash(_roomGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsEntityImplCopyWith<_$RoomsEntityImpl> get copyWith =>
      __$$RoomsEntityImplCopyWithImpl<_$RoomsEntityImpl>(this, _$identity);
}

abstract class _RoomsEntity implements RoomsEntity {
  const factory _RoomsEntity(
      {required final OverallRoomEntity overall,
      required final List<RoomGroupEntity> roomGroups}) = _$RoomsEntityImpl;

  @override
  OverallRoomEntity get overall;
  @override
  List<RoomGroupEntity> get roomGroups;
  @override
  @JsonKey(ignore: true)
  _$$RoomsEntityImplCopyWith<_$RoomsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverallRoomEntity {
  String get boarding => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get adultCount => throw _privateConstructorUsedError;
  int get childrenCount => throw _privateConstructorUsedError;
  bool get sameBoarding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverallRoomEntityCopyWith<OverallRoomEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverallRoomEntityCopyWith<$Res> {
  factory $OverallRoomEntityCopyWith(
          OverallRoomEntity value, $Res Function(OverallRoomEntity) then) =
      _$OverallRoomEntityCopyWithImpl<$Res, OverallRoomEntity>;
  @useResult
  $Res call(
      {String boarding,
      String name,
      int adultCount,
      int childrenCount,
      bool sameBoarding});
}

/// @nodoc
class _$OverallRoomEntityCopyWithImpl<$Res, $Val extends OverallRoomEntity>
    implements $OverallRoomEntityCopyWith<$Res> {
  _$OverallRoomEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boarding = null,
    Object? name = null,
    Object? adultCount = null,
    Object? childrenCount = null,
    Object? sameBoarding = null,
  }) {
    return _then(_value.copyWith(
      boarding: null == boarding
          ? _value.boarding
          : boarding // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adultCount: null == adultCount
          ? _value.adultCount
          : adultCount // ignore: cast_nullable_to_non_nullable
              as int,
      childrenCount: null == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int,
      sameBoarding: null == sameBoarding
          ? _value.sameBoarding
          : sameBoarding // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverallRoomEntityImplCopyWith<$Res>
    implements $OverallRoomEntityCopyWith<$Res> {
  factory _$$OverallRoomEntityImplCopyWith(_$OverallRoomEntityImpl value,
          $Res Function(_$OverallRoomEntityImpl) then) =
      __$$OverallRoomEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String boarding,
      String name,
      int adultCount,
      int childrenCount,
      bool sameBoarding});
}

/// @nodoc
class __$$OverallRoomEntityImplCopyWithImpl<$Res>
    extends _$OverallRoomEntityCopyWithImpl<$Res, _$OverallRoomEntityImpl>
    implements _$$OverallRoomEntityImplCopyWith<$Res> {
  __$$OverallRoomEntityImplCopyWithImpl(_$OverallRoomEntityImpl _value,
      $Res Function(_$OverallRoomEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boarding = null,
    Object? name = null,
    Object? adultCount = null,
    Object? childrenCount = null,
    Object? sameBoarding = null,
  }) {
    return _then(_$OverallRoomEntityImpl(
      boarding: null == boarding
          ? _value.boarding
          : boarding // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adultCount: null == adultCount
          ? _value.adultCount
          : adultCount // ignore: cast_nullable_to_non_nullable
              as int,
      childrenCount: null == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int,
      sameBoarding: null == sameBoarding
          ? _value.sameBoarding
          : sameBoarding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OverallRoomEntityImpl implements _OverallRoomEntity {
  const _$OverallRoomEntityImpl(
      {required this.boarding,
      required this.name,
      required this.adultCount,
      required this.childrenCount,
      required this.sameBoarding});

  @override
  final String boarding;
  @override
  final String name;
  @override
  final int adultCount;
  @override
  final int childrenCount;
  @override
  final bool sameBoarding;

  @override
  String toString() {
    return 'OverallRoomEntity(boarding: $boarding, name: $name, adultCount: $adultCount, childrenCount: $childrenCount, sameBoarding: $sameBoarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallRoomEntityImpl &&
            (identical(other.boarding, boarding) ||
                other.boarding == boarding) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adultCount, adultCount) ||
                other.adultCount == adultCount) &&
            (identical(other.childrenCount, childrenCount) ||
                other.childrenCount == childrenCount) &&
            (identical(other.sameBoarding, sameBoarding) ||
                other.sameBoarding == sameBoarding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, boarding, name, adultCount, childrenCount, sameBoarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverallRoomEntityImplCopyWith<_$OverallRoomEntityImpl> get copyWith =>
      __$$OverallRoomEntityImplCopyWithImpl<_$OverallRoomEntityImpl>(
          this, _$identity);
}

abstract class _OverallRoomEntity implements OverallRoomEntity {
  const factory _OverallRoomEntity(
      {required final String boarding,
      required final String name,
      required final int adultCount,
      required final int childrenCount,
      required final bool sameBoarding}) = _$OverallRoomEntityImpl;

  @override
  String get boarding;
  @override
  String get name;
  @override
  int get adultCount;
  @override
  int get childrenCount;
  @override
  bool get sameBoarding;
  @override
  @JsonKey(ignore: true)
  _$$OverallRoomEntityImplCopyWith<_$OverallRoomEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomGroupEntity {
  String get boarding => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomGroupEntityCopyWith<RoomGroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomGroupEntityCopyWith<$Res> {
  factory $RoomGroupEntityCopyWith(
          RoomGroupEntity value, $Res Function(RoomGroupEntity) then) =
      _$RoomGroupEntityCopyWithImpl<$Res, RoomGroupEntity>;
  @useResult
  $Res call({String boarding, String name, int quantity});
}

/// @nodoc
class _$RoomGroupEntityCopyWithImpl<$Res, $Val extends RoomGroupEntity>
    implements $RoomGroupEntityCopyWith<$Res> {
  _$RoomGroupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boarding = null,
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      boarding: null == boarding
          ? _value.boarding
          : boarding // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomGroupEntityImplCopyWith<$Res>
    implements $RoomGroupEntityCopyWith<$Res> {
  factory _$$RoomGroupEntityImplCopyWith(_$RoomGroupEntityImpl value,
          $Res Function(_$RoomGroupEntityImpl) then) =
      __$$RoomGroupEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String boarding, String name, int quantity});
}

/// @nodoc
class __$$RoomGroupEntityImplCopyWithImpl<$Res>
    extends _$RoomGroupEntityCopyWithImpl<$Res, _$RoomGroupEntityImpl>
    implements _$$RoomGroupEntityImplCopyWith<$Res> {
  __$$RoomGroupEntityImplCopyWithImpl(
      _$RoomGroupEntityImpl _value, $Res Function(_$RoomGroupEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boarding = null,
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$RoomGroupEntityImpl(
      boarding: null == boarding
          ? _value.boarding
          : boarding // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RoomGroupEntityImpl implements _RoomGroupEntity {
  const _$RoomGroupEntityImpl(
      {required this.boarding, required this.name, required this.quantity});

  @override
  final String boarding;
  @override
  final String name;
  @override
  final int quantity;

  @override
  String toString() {
    return 'RoomGroupEntity(boarding: $boarding, name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomGroupEntityImpl &&
            (identical(other.boarding, boarding) ||
                other.boarding == boarding) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boarding, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomGroupEntityImplCopyWith<_$RoomGroupEntityImpl> get copyWith =>
      __$$RoomGroupEntityImplCopyWithImpl<_$RoomGroupEntityImpl>(
          this, _$identity);
}

abstract class _RoomGroupEntity implements RoomGroupEntity {
  const factory _RoomGroupEntity(
      {required final String boarding,
      required final String name,
      required final int quantity}) = _$RoomGroupEntityImpl;

  @override
  String get boarding;
  @override
  String get name;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$RoomGroupEntityImplCopyWith<_$RoomGroupEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
