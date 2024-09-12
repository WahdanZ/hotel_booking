// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelResponse _$HotelResponseFromJson(Map<String, dynamic> json) {
  return _HotelResponse.fromJson(json);
}

/// @nodoc
mixin _$HotelResponse {
  List<HotelModel> get hotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelResponseCopyWith<HotelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelResponseCopyWith<$Res> {
  factory $HotelResponseCopyWith(
          HotelResponse value, $Res Function(HotelResponse) then) =
      _$HotelResponseCopyWithImpl<$Res, HotelResponse>;
  @useResult
  $Res call({List<HotelModel> hotels});
}

/// @nodoc
class _$HotelResponseCopyWithImpl<$Res, $Val extends HotelResponse>
    implements $HotelResponseCopyWith<$Res> {
  _$HotelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = null,
  }) {
    return _then(_value.copyWith(
      hotels: null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelResponseImplCopyWith<$Res>
    implements $HotelResponseCopyWith<$Res> {
  factory _$$HotelResponseImplCopyWith(
          _$HotelResponseImpl value, $Res Function(_$HotelResponseImpl) then) =
      __$$HotelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HotelModel> hotels});
}

/// @nodoc
class __$$HotelResponseImplCopyWithImpl<$Res>
    extends _$HotelResponseCopyWithImpl<$Res, _$HotelResponseImpl>
    implements _$$HotelResponseImplCopyWith<$Res> {
  __$$HotelResponseImplCopyWithImpl(
      _$HotelResponseImpl _value, $Res Function(_$HotelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = null,
  }) {
    return _then(_$HotelResponseImpl(
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelResponseImpl implements _HotelResponse {
  const _$HotelResponseImpl({required final List<HotelModel> hotels})
      : _hotels = hotels;

  factory _$HotelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelResponseImplFromJson(json);

  final List<HotelModel> _hotels;
  @override
  List<HotelModel> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'HotelResponse(hotels: $hotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelResponseImpl &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelResponseImplCopyWith<_$HotelResponseImpl> get copyWith =>
      __$$HotelResponseImplCopyWithImpl<_$HotelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelResponseImplToJson(
      this,
    );
  }
}

abstract class _HotelResponse implements HotelResponse {
  const factory _HotelResponse({required final List<HotelModel> hotels}) =
      _$HotelResponseImpl;

  factory _HotelResponse.fromJson(Map<String, dynamic> json) =
      _$HotelResponseImpl.fromJson;

  @override
  List<HotelModel> get hotels;
  @override
  @JsonKey(ignore: true)
  _$$HotelResponseImplCopyWith<_$HotelResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  @JsonKey(name: 'hotel-id')
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  List<HotelImage> get images => throw _privateConstructorUsedError;
  RatingInfo? get ratingInfo => throw _privateConstructorUsedError;
  BestOffer? get bestOffer => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  Analytics? get analytics => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'category-type')
  String? get categoryType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hotel-id') String hotelId,
      String name,
      String destination,
      List<HotelImage> images,
      RatingInfo? ratingInfo,
      BestOffer? bestOffer,
      double latitude,
      double longitude,
      Analytics? analytics,
      int category,
      @JsonKey(name: 'category-type') String? categoryType});

  $RatingInfoCopyWith<$Res>? get ratingInfo;
  $BestOfferCopyWith<$Res>? get bestOffer;
  $AnalyticsCopyWith<$Res>? get analytics;
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

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
    Object? ratingInfo = freezed,
    Object? bestOffer = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? analytics = freezed,
    Object? category = null,
    Object? categoryType = freezed,
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
              as List<HotelImage>,
      ratingInfo: freezed == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfo?,
      bestOffer: freezed == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOffer?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as Analytics?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingInfoCopyWith<$Res>? get ratingInfo {
    if (_value.ratingInfo == null) {
      return null;
    }

    return $RatingInfoCopyWith<$Res>(_value.ratingInfo!, (value) {
      return _then(_value.copyWith(ratingInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BestOfferCopyWith<$Res>? get bestOffer {
    if (_value.bestOffer == null) {
      return null;
    }

    return $BestOfferCopyWith<$Res>(_value.bestOffer!, (value) {
      return _then(_value.copyWith(bestOffer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsCopyWith<$Res>? get analytics {
    if (_value.analytics == null) {
      return null;
    }

    return $AnalyticsCopyWith<$Res>(_value.analytics!, (value) {
      return _then(_value.copyWith(analytics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelModelImplCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$HotelModelImplCopyWith(
          _$HotelModelImpl value, $Res Function(_$HotelModelImpl) then) =
      __$$HotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hotel-id') String hotelId,
      String name,
      String destination,
      List<HotelImage> images,
      RatingInfo? ratingInfo,
      BestOffer? bestOffer,
      double latitude,
      double longitude,
      Analytics? analytics,
      int category,
      @JsonKey(name: 'category-type') String? categoryType});

  @override
  $RatingInfoCopyWith<$Res>? get ratingInfo;
  @override
  $BestOfferCopyWith<$Res>? get bestOffer;
  @override
  $AnalyticsCopyWith<$Res>? get analytics;
}

/// @nodoc
class __$$HotelModelImplCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$HotelModelImpl>
    implements _$$HotelModelImplCopyWith<$Res> {
  __$$HotelModelImplCopyWithImpl(
      _$HotelModelImpl _value, $Res Function(_$HotelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? name = null,
    Object? destination = null,
    Object? images = null,
    Object? ratingInfo = freezed,
    Object? bestOffer = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? analytics = freezed,
    Object? category = null,
    Object? categoryType = freezed,
  }) {
    return _then(_$HotelModelImpl(
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
              as List<HotelImage>,
      ratingInfo: freezed == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfo?,
      bestOffer: freezed == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOffer?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      analytics: freezed == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as Analytics?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryType: freezed == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelModelImpl implements _HotelModel {
  const _$HotelModelImpl(
      {@JsonKey(name: 'hotel-id') required this.hotelId,
      required this.name,
      required this.destination,
      required final List<HotelImage> images,
      this.ratingInfo,
      this.bestOffer,
      required this.latitude,
      required this.longitude,
      this.analytics,
      required this.category,
      @JsonKey(name: 'category-type') this.categoryType})
      : _images = images;

  factory _$HotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelModelImplFromJson(json);

  @override
  @JsonKey(name: 'hotel-id')
  final String hotelId;
  @override
  final String name;
  @override
  final String destination;
  final List<HotelImage> _images;
  @override
  List<HotelImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final RatingInfo? ratingInfo;
  @override
  final BestOffer? bestOffer;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final Analytics? analytics;
  @override
  final int category;
  @override
  @JsonKey(name: 'category-type')
  final String? categoryType;

  @override
  String toString() {
    return 'HotelModel(hotelId: $hotelId, name: $name, destination: $destination, images: $images, ratingInfo: $ratingInfo, bestOffer: $bestOffer, latitude: $latitude, longitude: $longitude, analytics: $analytics, category: $category, categoryType: $categoryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelModelImpl &&
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
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType));
  }

  @JsonKey(ignore: true)
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
      analytics,
      category,
      categoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      __$$HotelModelImplCopyWithImpl<_$HotelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelModelImplToJson(
      this,
    );
  }
}

abstract class _HotelModel implements HotelModel {
  const factory _HotelModel(
          {@JsonKey(name: 'hotel-id') required final String hotelId,
          required final String name,
          required final String destination,
          required final List<HotelImage> images,
          final RatingInfo? ratingInfo,
          final BestOffer? bestOffer,
          required final double latitude,
          required final double longitude,
          final Analytics? analytics,
          required final int category,
          @JsonKey(name: 'category-type') final String? categoryType}) =
      _$HotelModelImpl;

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$HotelModelImpl.fromJson;

  @override
  @JsonKey(name: 'hotel-id')
  String get hotelId;
  @override
  String get name;
  @override
  String get destination;
  @override
  List<HotelImage> get images;
  @override
  RatingInfo? get ratingInfo;
  @override
  BestOffer? get bestOffer;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  Analytics? get analytics;
  @override
  int get category;
  @override
  @JsonKey(name: 'category-type')
  String? get categoryType;
  @override
  @JsonKey(ignore: true)
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelImage _$HotelImageFromJson(Map<String, dynamic> json) {
  return _HotelImage.fromJson(json);
}

/// @nodoc
mixin _$HotelImage {
  String get large => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelImageCopyWith<HotelImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelImageCopyWith<$Res> {
  factory $HotelImageCopyWith(
          HotelImage value, $Res Function(HotelImage) then) =
      _$HotelImageCopyWithImpl<$Res, HotelImage>;
  @useResult
  $Res call({String large, String small});
}

/// @nodoc
class _$HotelImageCopyWithImpl<$Res, $Val extends HotelImage>
    implements $HotelImageCopyWith<$Res> {
  _$HotelImageCopyWithImpl(this._value, this._then);

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
abstract class _$$HotelImageImplCopyWith<$Res>
    implements $HotelImageCopyWith<$Res> {
  factory _$$HotelImageImplCopyWith(
          _$HotelImageImpl value, $Res Function(_$HotelImageImpl) then) =
      __$$HotelImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String large, String small});
}

/// @nodoc
class __$$HotelImageImplCopyWithImpl<$Res>
    extends _$HotelImageCopyWithImpl<$Res, _$HotelImageImpl>
    implements _$$HotelImageImplCopyWith<$Res> {
  __$$HotelImageImplCopyWithImpl(
      _$HotelImageImpl _value, $Res Function(_$HotelImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? small = null,
  }) {
    return _then(_$HotelImageImpl(
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
@JsonSerializable()
class _$HotelImageImpl implements _HotelImage {
  const _$HotelImageImpl({required this.large, required this.small});

  factory _$HotelImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelImageImplFromJson(json);

  @override
  final String large;
  @override
  final String small;

  @override
  String toString() {
    return 'HotelImage(large: $large, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelImageImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelImageImplCopyWith<_$HotelImageImpl> get copyWith =>
      __$$HotelImageImplCopyWithImpl<_$HotelImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelImageImplToJson(
      this,
    );
  }
}

abstract class _HotelImage implements HotelImage {
  const factory _HotelImage(
      {required final String large,
      required final String small}) = _$HotelImageImpl;

  factory _HotelImage.fromJson(Map<String, dynamic> json) =
      _$HotelImageImpl.fromJson;

  @override
  String get large;
  @override
  String get small;
  @override
  @JsonKey(ignore: true)
  _$$HotelImageImplCopyWith<_$HotelImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingInfo _$RatingInfoFromJson(Map<String, dynamic> json) {
  return _RatingInfo.fromJson(json);
}

/// @nodoc
mixin _$RatingInfo {
  double get score => throw _privateConstructorUsedError;
  int get reviewsCount => throw _privateConstructorUsedError;
  String get scoreDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingInfoCopyWith<RatingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingInfoCopyWith<$Res> {
  factory $RatingInfoCopyWith(
          RatingInfo value, $Res Function(RatingInfo) then) =
      _$RatingInfoCopyWithImpl<$Res, RatingInfo>;
  @useResult
  $Res call({double score, int reviewsCount, String scoreDescription});
}

/// @nodoc
class _$RatingInfoCopyWithImpl<$Res, $Val extends RatingInfo>
    implements $RatingInfoCopyWith<$Res> {
  _$RatingInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$RatingInfoImplCopyWith<$Res>
    implements $RatingInfoCopyWith<$Res> {
  factory _$$RatingInfoImplCopyWith(
          _$RatingInfoImpl value, $Res Function(_$RatingInfoImpl) then) =
      __$$RatingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double score, int reviewsCount, String scoreDescription});
}

/// @nodoc
class __$$RatingInfoImplCopyWithImpl<$Res>
    extends _$RatingInfoCopyWithImpl<$Res, _$RatingInfoImpl>
    implements _$$RatingInfoImplCopyWith<$Res> {
  __$$RatingInfoImplCopyWithImpl(
      _$RatingInfoImpl _value, $Res Function(_$RatingInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? reviewsCount = null,
    Object? scoreDescription = null,
  }) {
    return _then(_$RatingInfoImpl(
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
@JsonSerializable()
class _$RatingInfoImpl implements _RatingInfo {
  const _$RatingInfoImpl(
      {required this.score,
      required this.reviewsCount,
      required this.scoreDescription});

  factory _$RatingInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingInfoImplFromJson(json);

  @override
  final double score;
  @override
  final int reviewsCount;
  @override
  final String scoreDescription;

  @override
  String toString() {
    return 'RatingInfo(score: $score, reviewsCount: $reviewsCount, scoreDescription: $scoreDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingInfoImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.scoreDescription, scoreDescription) ||
                other.scoreDescription == scoreDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, score, reviewsCount, scoreDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingInfoImplCopyWith<_$RatingInfoImpl> get copyWith =>
      __$$RatingInfoImplCopyWithImpl<_$RatingInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingInfoImplToJson(
      this,
    );
  }
}

abstract class _RatingInfo implements RatingInfo {
  const factory _RatingInfo(
      {required final double score,
      required final int reviewsCount,
      required final String scoreDescription}) = _$RatingInfoImpl;

  factory _RatingInfo.fromJson(Map<String, dynamic> json) =
      _$RatingInfoImpl.fromJson;

  @override
  double get score;
  @override
  int get reviewsCount;
  @override
  String get scoreDescription;
  @override
  @JsonKey(ignore: true)
  _$$RatingInfoImplCopyWith<_$RatingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BestOffer _$BestOfferFromJson(Map<String, dynamic> json) {
  return _BestOffer.fromJson(json);
}

/// @nodoc
mixin _$BestOffer {
  int get total => throw _privateConstructorUsedError;
  int get originalTravelPrice => throw _privateConstructorUsedError;
  int get simplePricePerPerson => throw _privateConstructorUsedError;
  bool get flightIncluded => throw _privateConstructorUsedError;
  TravelDate get travelDate => throw _privateConstructorUsedError;
  Rooms get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestOfferCopyWith<BestOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOfferCopyWith<$Res> {
  factory $BestOfferCopyWith(BestOffer value, $Res Function(BestOffer) then) =
      _$BestOfferCopyWithImpl<$Res, BestOffer>;
  @useResult
  $Res call(
      {int total,
      int originalTravelPrice,
      int simplePricePerPerson,
      bool flightIncluded,
      TravelDate travelDate,
      Rooms rooms});

  $TravelDateCopyWith<$Res> get travelDate;
  $RoomsCopyWith<$Res> get rooms;
}

/// @nodoc
class _$BestOfferCopyWithImpl<$Res, $Val extends BestOffer>
    implements $BestOfferCopyWith<$Res> {
  _$BestOfferCopyWithImpl(this._value, this._then);

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
              as TravelDate,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Rooms,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelDateCopyWith<$Res> get travelDate {
    return $TravelDateCopyWith<$Res>(_value.travelDate, (value) {
      return _then(_value.copyWith(travelDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsCopyWith<$Res> get rooms {
    return $RoomsCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BestOfferImplCopyWith<$Res>
    implements $BestOfferCopyWith<$Res> {
  factory _$$BestOfferImplCopyWith(
          _$BestOfferImpl value, $Res Function(_$BestOfferImpl) then) =
      __$$BestOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int originalTravelPrice,
      int simplePricePerPerson,
      bool flightIncluded,
      TravelDate travelDate,
      Rooms rooms});

  @override
  $TravelDateCopyWith<$Res> get travelDate;
  @override
  $RoomsCopyWith<$Res> get rooms;
}

/// @nodoc
class __$$BestOfferImplCopyWithImpl<$Res>
    extends _$BestOfferCopyWithImpl<$Res, _$BestOfferImpl>
    implements _$$BestOfferImplCopyWith<$Res> {
  __$$BestOfferImplCopyWithImpl(
      _$BestOfferImpl _value, $Res Function(_$BestOfferImpl) _then)
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
    return _then(_$BestOfferImpl(
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
              as TravelDate,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Rooms,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestOfferImpl implements _BestOffer {
  const _$BestOfferImpl(
      {required this.total,
      required this.originalTravelPrice,
      required this.simplePricePerPerson,
      required this.flightIncluded,
      required this.travelDate,
      required this.rooms});

  factory _$BestOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestOfferImplFromJson(json);

  @override
  final int total;
  @override
  final int originalTravelPrice;
  @override
  final int simplePricePerPerson;
  @override
  final bool flightIncluded;
  @override
  final TravelDate travelDate;
  @override
  final Rooms rooms;

  @override
  String toString() {
    return 'BestOffer(total: $total, originalTravelPrice: $originalTravelPrice, simplePricePerPerson: $simplePricePerPerson, flightIncluded: $flightIncluded, travelDate: $travelDate, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestOfferImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, originalTravelPrice,
      simplePricePerPerson, flightIncluded, travelDate, rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestOfferImplCopyWith<_$BestOfferImpl> get copyWith =>
      __$$BestOfferImplCopyWithImpl<_$BestOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestOfferImplToJson(
      this,
    );
  }
}

abstract class _BestOffer implements BestOffer {
  const factory _BestOffer(
      {required final int total,
      required final int originalTravelPrice,
      required final int simplePricePerPerson,
      required final bool flightIncluded,
      required final TravelDate travelDate,
      required final Rooms rooms}) = _$BestOfferImpl;

  factory _BestOffer.fromJson(Map<String, dynamic> json) =
      _$BestOfferImpl.fromJson;

  @override
  int get total;
  @override
  int get originalTravelPrice;
  @override
  int get simplePricePerPerson;
  @override
  bool get flightIncluded;
  @override
  TravelDate get travelDate;
  @override
  Rooms get rooms;
  @override
  @JsonKey(ignore: true)
  _$$BestOfferImplCopyWith<_$BestOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelDate _$TravelDateFromJson(Map<String, dynamic> json) {
  return _TravelDate.fromJson(json);
}

/// @nodoc
mixin _$TravelDate {
  String get departureDate => throw _privateConstructorUsedError;
  String get returnDate => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  int get nights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelDateCopyWith<TravelDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDateCopyWith<$Res> {
  factory $TravelDateCopyWith(
          TravelDate value, $Res Function(TravelDate) then) =
      _$TravelDateCopyWithImpl<$Res, TravelDate>;
  @useResult
  $Res call({String departureDate, String returnDate, int days, int nights});
}

/// @nodoc
class _$TravelDateCopyWithImpl<$Res, $Val extends TravelDate>
    implements $TravelDateCopyWith<$Res> {
  _$TravelDateCopyWithImpl(this._value, this._then);

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
abstract class _$$TravelDateImplCopyWith<$Res>
    implements $TravelDateCopyWith<$Res> {
  factory _$$TravelDateImplCopyWith(
          _$TravelDateImpl value, $Res Function(_$TravelDateImpl) then) =
      __$$TravelDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String departureDate, String returnDate, int days, int nights});
}

/// @nodoc
class __$$TravelDateImplCopyWithImpl<$Res>
    extends _$TravelDateCopyWithImpl<$Res, _$TravelDateImpl>
    implements _$$TravelDateImplCopyWith<$Res> {
  __$$TravelDateImplCopyWithImpl(
      _$TravelDateImpl _value, $Res Function(_$TravelDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDate = null,
    Object? returnDate = null,
    Object? days = null,
    Object? nights = null,
  }) {
    return _then(_$TravelDateImpl(
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
@JsonSerializable()
class _$TravelDateImpl implements _TravelDate {
  const _$TravelDateImpl(
      {required this.departureDate,
      required this.returnDate,
      required this.days,
      required this.nights});

  factory _$TravelDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelDateImplFromJson(json);

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
    return 'TravelDate(departureDate: $departureDate, returnDate: $returnDate, days: $days, nights: $nights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDateImpl &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.nights, nights) || other.nights == nights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, departureDate, returnDate, days, nights);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDateImplCopyWith<_$TravelDateImpl> get copyWith =>
      __$$TravelDateImplCopyWithImpl<_$TravelDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelDateImplToJson(
      this,
    );
  }
}

abstract class _TravelDate implements TravelDate {
  const factory _TravelDate(
      {required final String departureDate,
      required final String returnDate,
      required final int days,
      required final int nights}) = _$TravelDateImpl;

  factory _TravelDate.fromJson(Map<String, dynamic> json) =
      _$TravelDateImpl.fromJson;

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
  _$$TravelDateImplCopyWith<_$TravelDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rooms _$RoomsFromJson(Map<String, dynamic> json) {
  return _Rooms.fromJson(json);
}

/// @nodoc
mixin _$Rooms {
  OverallRoom get overall => throw _privateConstructorUsedError;
  List<RoomGroup> get roomGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsCopyWith<Rooms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsCopyWith<$Res> {
  factory $RoomsCopyWith(Rooms value, $Res Function(Rooms) then) =
      _$RoomsCopyWithImpl<$Res, Rooms>;
  @useResult
  $Res call({OverallRoom overall, List<RoomGroup> roomGroups});

  $OverallRoomCopyWith<$Res> get overall;
}

/// @nodoc
class _$RoomsCopyWithImpl<$Res, $Val extends Rooms>
    implements $RoomsCopyWith<$Res> {
  _$RoomsCopyWithImpl(this._value, this._then);

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
              as OverallRoom,
      roomGroups: null == roomGroups
          ? _value.roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as List<RoomGroup>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OverallRoomCopyWith<$Res> get overall {
    return $OverallRoomCopyWith<$Res>(_value.overall, (value) {
      return _then(_value.copyWith(overall: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomsImplCopyWith<$Res> implements $RoomsCopyWith<$Res> {
  factory _$$RoomsImplCopyWith(
          _$RoomsImpl value, $Res Function(_$RoomsImpl) then) =
      __$$RoomsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OverallRoom overall, List<RoomGroup> roomGroups});

  @override
  $OverallRoomCopyWith<$Res> get overall;
}

/// @nodoc
class __$$RoomsImplCopyWithImpl<$Res>
    extends _$RoomsCopyWithImpl<$Res, _$RoomsImpl>
    implements _$$RoomsImplCopyWith<$Res> {
  __$$RoomsImplCopyWithImpl(
      _$RoomsImpl _value, $Res Function(_$RoomsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = null,
    Object? roomGroups = null,
  }) {
    return _then(_$RoomsImpl(
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as OverallRoom,
      roomGroups: null == roomGroups
          ? _value._roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as List<RoomGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomsImpl implements _Rooms {
  const _$RoomsImpl(
      {required this.overall, required final List<RoomGroup> roomGroups})
      : _roomGroups = roomGroups;

  factory _$RoomsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomsImplFromJson(json);

  @override
  final OverallRoom overall;
  final List<RoomGroup> _roomGroups;
  @override
  List<RoomGroup> get roomGroups {
    if (_roomGroups is EqualUnmodifiableListView) return _roomGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomGroups);
  }

  @override
  String toString() {
    return 'Rooms(overall: $overall, roomGroups: $roomGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsImpl &&
            (identical(other.overall, overall) || other.overall == overall) &&
            const DeepCollectionEquality()
                .equals(other._roomGroups, _roomGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, overall, const DeepCollectionEquality().hash(_roomGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsImplCopyWith<_$RoomsImpl> get copyWith =>
      __$$RoomsImplCopyWithImpl<_$RoomsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomsImplToJson(
      this,
    );
  }
}

abstract class _Rooms implements Rooms {
  const factory _Rooms(
      {required final OverallRoom overall,
      required final List<RoomGroup> roomGroups}) = _$RoomsImpl;

  factory _Rooms.fromJson(Map<String, dynamic> json) = _$RoomsImpl.fromJson;

  @override
  OverallRoom get overall;
  @override
  List<RoomGroup> get roomGroups;
  @override
  @JsonKey(ignore: true)
  _$$RoomsImplCopyWith<_$RoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OverallRoom _$OverallRoomFromJson(Map<String, dynamic> json) {
  return _OverallRoom.fromJson(json);
}

/// @nodoc
mixin _$OverallRoom {
  String get boarding => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get adultCount => throw _privateConstructorUsedError;
  int get childrenCount => throw _privateConstructorUsedError;
  bool get sameBoarding => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverallRoomCopyWith<OverallRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverallRoomCopyWith<$Res> {
  factory $OverallRoomCopyWith(
          OverallRoom value, $Res Function(OverallRoom) then) =
      _$OverallRoomCopyWithImpl<$Res, OverallRoom>;
  @useResult
  $Res call(
      {String boarding,
      String name,
      int adultCount,
      int childrenCount,
      bool sameBoarding});
}

/// @nodoc
class _$OverallRoomCopyWithImpl<$Res, $Val extends OverallRoom>
    implements $OverallRoomCopyWith<$Res> {
  _$OverallRoomCopyWithImpl(this._value, this._then);

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
abstract class _$$OverallRoomImplCopyWith<$Res>
    implements $OverallRoomCopyWith<$Res> {
  factory _$$OverallRoomImplCopyWith(
          _$OverallRoomImpl value, $Res Function(_$OverallRoomImpl) then) =
      __$$OverallRoomImplCopyWithImpl<$Res>;
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
class __$$OverallRoomImplCopyWithImpl<$Res>
    extends _$OverallRoomCopyWithImpl<$Res, _$OverallRoomImpl>
    implements _$$OverallRoomImplCopyWith<$Res> {
  __$$OverallRoomImplCopyWithImpl(
      _$OverallRoomImpl _value, $Res Function(_$OverallRoomImpl) _then)
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
    return _then(_$OverallRoomImpl(
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
@JsonSerializable()
class _$OverallRoomImpl implements _OverallRoom {
  const _$OverallRoomImpl(
      {required this.boarding,
      required this.name,
      required this.adultCount,
      required this.childrenCount,
      required this.sameBoarding});

  factory _$OverallRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverallRoomImplFromJson(json);

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
    return 'OverallRoom(boarding: $boarding, name: $name, adultCount: $adultCount, childrenCount: $childrenCount, sameBoarding: $sameBoarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallRoomImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, boarding, name, adultCount, childrenCount, sameBoarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverallRoomImplCopyWith<_$OverallRoomImpl> get copyWith =>
      __$$OverallRoomImplCopyWithImpl<_$OverallRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverallRoomImplToJson(
      this,
    );
  }
}

abstract class _OverallRoom implements OverallRoom {
  const factory _OverallRoom(
      {required final String boarding,
      required final String name,
      required final int adultCount,
      required final int childrenCount,
      required final bool sameBoarding}) = _$OverallRoomImpl;

  factory _OverallRoom.fromJson(Map<String, dynamic> json) =
      _$OverallRoomImpl.fromJson;

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
  _$$OverallRoomImplCopyWith<_$OverallRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomGroup _$RoomGroupFromJson(Map<String, dynamic> json) {
  return _RoomGroup.fromJson(json);
}

/// @nodoc
mixin _$RoomGroup {
  String get boarding => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomGroupCopyWith<RoomGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomGroupCopyWith<$Res> {
  factory $RoomGroupCopyWith(RoomGroup value, $Res Function(RoomGroup) then) =
      _$RoomGroupCopyWithImpl<$Res, RoomGroup>;
  @useResult
  $Res call({String boarding, String name, int quantity});
}

/// @nodoc
class _$RoomGroupCopyWithImpl<$Res, $Val extends RoomGroup>
    implements $RoomGroupCopyWith<$Res> {
  _$RoomGroupCopyWithImpl(this._value, this._then);

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
abstract class _$$RoomGroupImplCopyWith<$Res>
    implements $RoomGroupCopyWith<$Res> {
  factory _$$RoomGroupImplCopyWith(
          _$RoomGroupImpl value, $Res Function(_$RoomGroupImpl) then) =
      __$$RoomGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String boarding, String name, int quantity});
}

/// @nodoc
class __$$RoomGroupImplCopyWithImpl<$Res>
    extends _$RoomGroupCopyWithImpl<$Res, _$RoomGroupImpl>
    implements _$$RoomGroupImplCopyWith<$Res> {
  __$$RoomGroupImplCopyWithImpl(
      _$RoomGroupImpl _value, $Res Function(_$RoomGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boarding = null,
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$RoomGroupImpl(
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
@JsonSerializable()
class _$RoomGroupImpl implements _RoomGroup {
  const _$RoomGroupImpl(
      {required this.boarding, required this.name, required this.quantity});

  factory _$RoomGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomGroupImplFromJson(json);

  @override
  final String boarding;
  @override
  final String name;
  @override
  final int quantity;

  @override
  String toString() {
    return 'RoomGroup(boarding: $boarding, name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomGroupImpl &&
            (identical(other.boarding, boarding) ||
                other.boarding == boarding) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, boarding, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomGroupImplCopyWith<_$RoomGroupImpl> get copyWith =>
      __$$RoomGroupImplCopyWithImpl<_$RoomGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomGroupImplToJson(
      this,
    );
  }
}

abstract class _RoomGroup implements RoomGroup {
  const factory _RoomGroup(
      {required final String boarding,
      required final String name,
      required final int quantity}) = _$RoomGroupImpl;

  factory _RoomGroup.fromJson(Map<String, dynamic> json) =
      _$RoomGroupImpl.fromJson;

  @override
  String get boarding;
  @override
  String get name;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$RoomGroupImplCopyWith<_$RoomGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Analytics _$AnalyticsFromJson(Map<String, dynamic> json) {
  return _Analytics.fromJson(json);
}

/// @nodoc
mixin _$Analytics {
  @JsonKey(name: 'select_item.item.0')
  AnalyticsItem? get selectItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsCopyWith<Analytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsCopyWith<$Res> {
  factory $AnalyticsCopyWith(Analytics value, $Res Function(Analytics) then) =
      _$AnalyticsCopyWithImpl<$Res, Analytics>;
  @useResult
  $Res call({@JsonKey(name: 'select_item.item.0') AnalyticsItem? selectItem});

  $AnalyticsItemCopyWith<$Res>? get selectItem;
}

/// @nodoc
class _$AnalyticsCopyWithImpl<$Res, $Val extends Analytics>
    implements $AnalyticsCopyWith<$Res> {
  _$AnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectItem = freezed,
  }) {
    return _then(_value.copyWith(
      selectItem: freezed == selectItem
          ? _value.selectItem
          : selectItem // ignore: cast_nullable_to_non_nullable
              as AnalyticsItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsItemCopyWith<$Res>? get selectItem {
    if (_value.selectItem == null) {
      return null;
    }

    return $AnalyticsItemCopyWith<$Res>(_value.selectItem!, (value) {
      return _then(_value.copyWith(selectItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsImplCopyWith<$Res>
    implements $AnalyticsCopyWith<$Res> {
  factory _$$AnalyticsImplCopyWith(
          _$AnalyticsImpl value, $Res Function(_$AnalyticsImpl) then) =
      __$$AnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'select_item.item.0') AnalyticsItem? selectItem});

  @override
  $AnalyticsItemCopyWith<$Res>? get selectItem;
}

/// @nodoc
class __$$AnalyticsImplCopyWithImpl<$Res>
    extends _$AnalyticsCopyWithImpl<$Res, _$AnalyticsImpl>
    implements _$$AnalyticsImplCopyWith<$Res> {
  __$$AnalyticsImplCopyWithImpl(
      _$AnalyticsImpl _value, $Res Function(_$AnalyticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectItem = freezed,
  }) {
    return _then(_$AnalyticsImpl(
      selectItem: freezed == selectItem
          ? _value.selectItem
          : selectItem // ignore: cast_nullable_to_non_nullable
              as AnalyticsItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsImpl implements _Analytics {
  const _$AnalyticsImpl({@JsonKey(name: 'select_item.item.0') this.selectItem});

  factory _$AnalyticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsImplFromJson(json);

  @override
  @JsonKey(name: 'select_item.item.0')
  final AnalyticsItem? selectItem;

  @override
  String toString() {
    return 'Analytics(selectItem: $selectItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsImpl &&
            (identical(other.selectItem, selectItem) ||
                other.selectItem == selectItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsImplCopyWith<_$AnalyticsImpl> get copyWith =>
      __$$AnalyticsImplCopyWithImpl<_$AnalyticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsImplToJson(
      this,
    );
  }
}

abstract class _Analytics implements Analytics {
  const factory _Analytics(
      {@JsonKey(name: 'select_item.item.0')
      final AnalyticsItem? selectItem}) = _$AnalyticsImpl;

  factory _Analytics.fromJson(Map<String, dynamic> json) =
      _$AnalyticsImpl.fromJson;

  @override
  @JsonKey(name: 'select_item.item.0')
  AnalyticsItem? get selectItem;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsImplCopyWith<_$AnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsItem _$AnalyticsItemFromJson(Map<String, dynamic> json) {
  return _AnalyticsItem.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsItem {
  String get currency => throw _privateConstructorUsedError;
  String get itemCategory => throw _privateConstructorUsedError;
  String get itemCategory2 => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get itemRooms => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsItemCopyWith<AnalyticsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsItemCopyWith<$Res> {
  factory $AnalyticsItemCopyWith(
          AnalyticsItem value, $Res Function(AnalyticsItem) then) =
      _$AnalyticsItemCopyWithImpl<$Res, AnalyticsItem>;
  @useResult
  $Res call(
      {String currency,
      String itemCategory,
      String itemCategory2,
      String itemId,
      String itemName,
      String itemRooms,
      String price,
      String quantity});
}

/// @nodoc
class _$AnalyticsItemCopyWithImpl<$Res, $Val extends AnalyticsItem>
    implements $AnalyticsItemCopyWith<$Res> {
  _$AnalyticsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? itemCategory = null,
    Object? itemCategory2 = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? itemRooms = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategory: null == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategory2: null == itemCategory2
          ? _value.itemCategory2
          : itemCategory2 // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemRooms: null == itemRooms
          ? _value.itemRooms
          : itemRooms // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsItemImplCopyWith<$Res>
    implements $AnalyticsItemCopyWith<$Res> {
  factory _$$AnalyticsItemImplCopyWith(
          _$AnalyticsItemImpl value, $Res Function(_$AnalyticsItemImpl) then) =
      __$$AnalyticsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currency,
      String itemCategory,
      String itemCategory2,
      String itemId,
      String itemName,
      String itemRooms,
      String price,
      String quantity});
}

/// @nodoc
class __$$AnalyticsItemImplCopyWithImpl<$Res>
    extends _$AnalyticsItemCopyWithImpl<$Res, _$AnalyticsItemImpl>
    implements _$$AnalyticsItemImplCopyWith<$Res> {
  __$$AnalyticsItemImplCopyWithImpl(
      _$AnalyticsItemImpl _value, $Res Function(_$AnalyticsItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? itemCategory = null,
    Object? itemCategory2 = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? itemRooms = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$AnalyticsItemImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategory: null == itemCategory
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategory2: null == itemCategory2
          ? _value.itemCategory2
          : itemCategory2 // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemRooms: null == itemRooms
          ? _value.itemRooms
          : itemRooms // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsItemImpl implements _AnalyticsItem {
  const _$AnalyticsItemImpl(
      {required this.currency,
      required this.itemCategory,
      required this.itemCategory2,
      required this.itemId,
      required this.itemName,
      required this.itemRooms,
      required this.price,
      required this.quantity});

  factory _$AnalyticsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsItemImplFromJson(json);

  @override
  final String currency;
  @override
  final String itemCategory;
  @override
  final String itemCategory2;
  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final String itemRooms;
  @override
  final String price;
  @override
  final String quantity;

  @override
  String toString() {
    return 'AnalyticsItem(currency: $currency, itemCategory: $itemCategory, itemCategory2: $itemCategory2, itemId: $itemId, itemName: $itemName, itemRooms: $itemRooms, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsItemImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.itemCategory, itemCategory) ||
                other.itemCategory == itemCategory) &&
            (identical(other.itemCategory2, itemCategory2) ||
                other.itemCategory2 == itemCategory2) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemRooms, itemRooms) ||
                other.itemRooms == itemRooms) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currency, itemCategory,
      itemCategory2, itemId, itemName, itemRooms, price, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsItemImplCopyWith<_$AnalyticsItemImpl> get copyWith =>
      __$$AnalyticsItemImplCopyWithImpl<_$AnalyticsItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsItemImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsItem implements AnalyticsItem {
  const factory _AnalyticsItem(
      {required final String currency,
      required final String itemCategory,
      required final String itemCategory2,
      required final String itemId,
      required final String itemName,
      required final String itemRooms,
      required final String price,
      required final String quantity}) = _$AnalyticsItemImpl;

  factory _AnalyticsItem.fromJson(Map<String, dynamic> json) =
      _$AnalyticsItemImpl.fromJson;

  @override
  String get currency;
  @override
  String get itemCategory;
  @override
  String get itemCategory2;
  @override
  String get itemId;
  @override
  String get itemName;
  @override
  String get itemRooms;
  @override
  String get price;
  @override
  String get quantity;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsItemImplCopyWith<_$AnalyticsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
