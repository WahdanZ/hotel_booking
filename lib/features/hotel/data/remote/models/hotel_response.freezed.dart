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
  List<HotelImageModel> get images => throw _privateConstructorUsedError;

  @JsonKey(name: 'rating-info')
  RatingInfoModel? get ratingInfo => throw _privateConstructorUsedError;

  @JsonKey(name: 'best-offer')
  BestOfferModel? get bestOffer => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  AnalyticsModel? get analytics => throw _privateConstructorUsedError;
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
      List<HotelImageModel> images,
      @JsonKey(name: 'rating-info') RatingInfoModel? ratingInfo,
      @JsonKey(name: 'best-offer') BestOfferModel? bestOffer,
      double latitude,
      double longitude,
      AnalyticsModel? analytics,
      int category,
      @JsonKey(name: 'category-type') String? categoryType});

  $RatingInfoModelCopyWith<$Res>? get ratingInfo;
  $BestOfferModelCopyWith<$Res>? get bestOffer;
  $AnalyticsModelCopyWith<$Res>? get analytics;
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
              as List<HotelImageModel>,
      ratingInfo: freezed == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfoModel?,
      bestOffer: freezed == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOfferModel?,
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
              as AnalyticsModel?,
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
  $RatingInfoModelCopyWith<$Res>? get ratingInfo {
    if (_value.ratingInfo == null) {
      return null;
    }

    return $RatingInfoModelCopyWith<$Res>(_value.ratingInfo!, (value) {
      return _then(_value.copyWith(ratingInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BestOfferModelCopyWith<$Res>? get bestOffer {
    if (_value.bestOffer == null) {
      return null;
    }

    return $BestOfferModelCopyWith<$Res>(_value.bestOffer!, (value) {
      return _then(_value.copyWith(bestOffer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsModelCopyWith<$Res>? get analytics {
    if (_value.analytics == null) {
      return null;
    }

    return $AnalyticsModelCopyWith<$Res>(_value.analytics!, (value) {
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
      List<HotelImageModel> images,
      @JsonKey(name: 'rating-info') RatingInfoModel? ratingInfo,
      @JsonKey(name: 'best-offer') BestOfferModel? bestOffer,
      double latitude,
      double longitude,
      AnalyticsModel? analytics,
      int category,
      @JsonKey(name: 'category-type') String? categoryType});

  @override
  $RatingInfoModelCopyWith<$Res>? get ratingInfo;
  @override
  $BestOfferModelCopyWith<$Res>? get bestOffer;
  @override
  $AnalyticsModelCopyWith<$Res>? get analytics;
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
              as List<HotelImageModel>,
      ratingInfo: freezed == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfoModel?,
      bestOffer: freezed == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOfferModel?,
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
              as AnalyticsModel?,
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
      required final List<HotelImageModel> images,
      @JsonKey(name: 'rating-info') this.ratingInfo,
      @JsonKey(name: 'best-offer') this.bestOffer,
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
  final List<HotelImageModel> _images;
  @override
  List<HotelImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'rating-info')
  final RatingInfoModel? ratingInfo;
  @override
  @JsonKey(name: 'best-offer')
  final BestOfferModel? bestOffer;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final AnalyticsModel? analytics;
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
          required final List<HotelImageModel> images,
          @JsonKey(name: 'rating-info') final RatingInfoModel? ratingInfo,
          @JsonKey(name: 'best-offer') final BestOfferModel? bestOffer,
          required final double latitude,
          required final double longitude,
          final AnalyticsModel? analytics,
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
  List<HotelImageModel> get images;
  @override
  @JsonKey(name: 'rating-info')
  RatingInfoModel? get ratingInfo;
  @override
  @JsonKey(name: 'best-offer')
  BestOfferModel? get bestOffer;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  AnalyticsModel? get analytics;
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

HotelImageModel _$HotelImageModelFromJson(Map<String, dynamic> json) {
  return _HotelImageModel.fromJson(json);
}

/// @nodoc
mixin _$HotelImageModel {
  String get large => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelImageModelCopyWith<HotelImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelImageModelCopyWith<$Res> {
  factory $HotelImageModelCopyWith(
          HotelImageModel value, $Res Function(HotelImageModel) then) =
      _$HotelImageModelCopyWithImpl<$Res, HotelImageModel>;
  @useResult
  $Res call({String large, String small});
}

/// @nodoc
class _$HotelImageModelCopyWithImpl<$Res, $Val extends HotelImageModel>
    implements $HotelImageModelCopyWith<$Res> {
  _$HotelImageModelCopyWithImpl(this._value, this._then);

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
abstract class _$$HotelImageModelImplCopyWith<$Res>
    implements $HotelImageModelCopyWith<$Res> {
  factory _$$HotelImageModelImplCopyWith(_$HotelImageModelImpl value,
          $Res Function(_$HotelImageModelImpl) then) =
      __$$HotelImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String large, String small});
}

/// @nodoc
class __$$HotelImageModelImplCopyWithImpl<$Res>
    extends _$HotelImageModelCopyWithImpl<$Res, _$HotelImageModelImpl>
    implements _$$HotelImageModelImplCopyWith<$Res> {
  __$$HotelImageModelImplCopyWithImpl(
      _$HotelImageModelImpl _value, $Res Function(_$HotelImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? small = null,
  }) {
    return _then(_$HotelImageModelImpl(
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
class _$HotelImageModelImpl implements _HotelImageModel {
  const _$HotelImageModelImpl({required this.large, required this.small});

  factory _$HotelImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelImageModelImplFromJson(json);

  @override
  final String large;
  @override
  final String small;

  @override
  String toString() {
    return 'HotelImageModel(large: $large, small: $small)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelImageModelImpl &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.small, small) || other.small == small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, small);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelImageModelImplCopyWith<_$HotelImageModelImpl> get copyWith =>
      __$$HotelImageModelImplCopyWithImpl<_$HotelImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelImageModelImplToJson(
      this,
    );
  }
}

abstract class _HotelImageModel implements HotelImageModel {
  const factory _HotelImageModel(
      {required final String large,
      required final String small}) = _$HotelImageModelImpl;

  factory _HotelImageModel.fromJson(Map<String, dynamic> json) =
      _$HotelImageModelImpl.fromJson;

  @override
  String get large;
  @override
  String get small;
  @override
  @JsonKey(ignore: true)
  _$$HotelImageModelImplCopyWith<_$HotelImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatingInfoModel _$RatingInfoModelFromJson(Map<String, dynamic> json) {
  return _RatingInfoModel.fromJson(json);
}

/// @nodoc
mixin _$RatingInfoModel {
  double get score => throw _privateConstructorUsedError;

  @JsonKey(name: 'reviews-count')
  int get reviewsCount => throw _privateConstructorUsedError;

  @JsonKey(name: 'score-description')
  String get scoreDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingInfoModelCopyWith<RatingInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingInfoModelCopyWith<$Res> {
  factory $RatingInfoModelCopyWith(
          RatingInfoModel value, $Res Function(RatingInfoModel) then) =
      _$RatingInfoModelCopyWithImpl<$Res, RatingInfoModel>;
  @useResult
  $Res call(
      {double score,
      @JsonKey(name: 'reviews-count') int reviewsCount,
      @JsonKey(name: 'score-description') String scoreDescription});
}

/// @nodoc
class _$RatingInfoModelCopyWithImpl<$Res, $Val extends RatingInfoModel>
    implements $RatingInfoModelCopyWith<$Res> {
  _$RatingInfoModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RatingInfoModelImplCopyWith<$Res>
    implements $RatingInfoModelCopyWith<$Res> {
  factory _$$RatingInfoModelImplCopyWith(_$RatingInfoModelImpl value,
          $Res Function(_$RatingInfoModelImpl) then) =
      __$$RatingInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double score,
      @JsonKey(name: 'reviews-count') int reviewsCount,
      @JsonKey(name: 'score-description') String scoreDescription});
}

/// @nodoc
class __$$RatingInfoModelImplCopyWithImpl<$Res>
    extends _$RatingInfoModelCopyWithImpl<$Res, _$RatingInfoModelImpl>
    implements _$$RatingInfoModelImplCopyWith<$Res> {
  __$$RatingInfoModelImplCopyWithImpl(
      _$RatingInfoModelImpl _value, $Res Function(_$RatingInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? reviewsCount = null,
    Object? scoreDescription = null,
  }) {
    return _then(_$RatingInfoModelImpl(
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
class _$RatingInfoModelImpl implements _RatingInfoModel {
  const _$RatingInfoModelImpl(
      {required this.score,
      @JsonKey(name: 'reviews-count') required this.reviewsCount,
      @JsonKey(name: 'score-description') required this.scoreDescription});

  factory _$RatingInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingInfoModelImplFromJson(json);

  @override
  final double score;
  @override
  @JsonKey(name: 'reviews-count')
  final int reviewsCount;
  @override
  @JsonKey(name: 'score-description')
  final String scoreDescription;

  @override
  String toString() {
    return 'RatingInfoModel(score: $score, reviewsCount: $reviewsCount, scoreDescription: $scoreDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingInfoModelImpl &&
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
  _$$RatingInfoModelImplCopyWith<_$RatingInfoModelImpl> get copyWith =>
      __$$RatingInfoModelImplCopyWithImpl<_$RatingInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingInfoModelImplToJson(
      this,
    );
  }
}

abstract class _RatingInfoModel implements RatingInfoModel {
  const factory _RatingInfoModel(
      {required final double score,
      @JsonKey(name: 'reviews-count') required final int reviewsCount,
      @JsonKey(name: 'score-description')
      required final String scoreDescription}) = _$RatingInfoModelImpl;

  factory _RatingInfoModel.fromJson(Map<String, dynamic> json) =
      _$RatingInfoModelImpl.fromJson;

  @override
  double get score;
  @override
  @JsonKey(name: 'reviews-count')
  int get reviewsCount;
  @override
  @JsonKey(name: 'score-description')
  String get scoreDescription;
  @override
  @JsonKey(ignore: true)
  _$$RatingInfoModelImplCopyWith<_$RatingInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BestOfferModel _$BestOfferModelFromJson(Map<String, dynamic> json) {
  return _BestOfferModel.fromJson(json);
}

/// @nodoc
mixin _$BestOfferModel {
  int get total => throw _privateConstructorUsedError;

  @JsonKey(name: 'original-travel-price')
  int get originalTravelPrice => throw _privateConstructorUsedError;

  @JsonKey(name: 'simple-price-per-person')
  int get simplePricePerPerson => throw _privateConstructorUsedError;

  @JsonKey(name: 'flight-included')
  bool get flightIncluded => throw _privateConstructorUsedError;

  @JsonKey(name: 'travel-date')
  TravelDateModel get travelDate => throw _privateConstructorUsedError;
  RoomsModel get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestOfferModelCopyWith<BestOfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOfferModelCopyWith<$Res> {
  factory $BestOfferModelCopyWith(
          BestOfferModel value, $Res Function(BestOfferModel) then) =
      _$BestOfferModelCopyWithImpl<$Res, BestOfferModel>;
  @useResult
  $Res call(
      {int total,
      @JsonKey(name: 'original-travel-price') int originalTravelPrice,
      @JsonKey(name: 'simple-price-per-person') int simplePricePerPerson,
      @JsonKey(name: 'flight-included') bool flightIncluded,
      @JsonKey(name: 'travel-date') TravelDateModel travelDate,
      RoomsModel rooms});

  $TravelDateModelCopyWith<$Res> get travelDate;
  $RoomsModelCopyWith<$Res> get rooms;
}

/// @nodoc
class _$BestOfferModelCopyWithImpl<$Res, $Val extends BestOfferModel>
    implements $BestOfferModelCopyWith<$Res> {
  _$BestOfferModelCopyWithImpl(this._value, this._then);

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
              as TravelDateModel,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelDateModelCopyWith<$Res> get travelDate {
    return $TravelDateModelCopyWith<$Res>(_value.travelDate, (value) {
      return _then(_value.copyWith(travelDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsModelCopyWith<$Res> get rooms {
    return $RoomsModelCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BestOfferModelImplCopyWith<$Res>
    implements $BestOfferModelCopyWith<$Res> {
  factory _$$BestOfferModelImplCopyWith(_$BestOfferModelImpl value,
          $Res Function(_$BestOfferModelImpl) then) =
      __$$BestOfferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      @JsonKey(name: 'original-travel-price') int originalTravelPrice,
      @JsonKey(name: 'simple-price-per-person') int simplePricePerPerson,
      @JsonKey(name: 'flight-included') bool flightIncluded,
      @JsonKey(name: 'travel-date') TravelDateModel travelDate,
      RoomsModel rooms});

  @override
  $TravelDateModelCopyWith<$Res> get travelDate;
  @override
  $RoomsModelCopyWith<$Res> get rooms;
}

/// @nodoc
class __$$BestOfferModelImplCopyWithImpl<$Res>
    extends _$BestOfferModelCopyWithImpl<$Res, _$BestOfferModelImpl>
    implements _$$BestOfferModelImplCopyWith<$Res> {
  __$$BestOfferModelImplCopyWithImpl(
      _$BestOfferModelImpl _value, $Res Function(_$BestOfferModelImpl) _then)
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
    return _then(_$BestOfferModelImpl(
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
              as TravelDateModel,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestOfferModelImpl implements _BestOfferModel {
  const _$BestOfferModelImpl(
      {required this.total,
      @JsonKey(name: 'original-travel-price') required this.originalTravelPrice,
      @JsonKey(name: 'simple-price-per-person')
      required this.simplePricePerPerson,
      @JsonKey(name: 'flight-included') required this.flightIncluded,
      @JsonKey(name: 'travel-date') required this.travelDate,
      required this.rooms});

  factory _$BestOfferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestOfferModelImplFromJson(json);

  @override
  final int total;
  @override
  @JsonKey(name: 'original-travel-price')
  final int originalTravelPrice;
  @override
  @JsonKey(name: 'simple-price-per-person')
  final int simplePricePerPerson;
  @override
  @JsonKey(name: 'flight-included')
  final bool flightIncluded;
  @override
  @JsonKey(name: 'travel-date')
  final TravelDateModel travelDate;
  @override
  final RoomsModel rooms;

  @override
  String toString() {
    return 'BestOfferModel(total: $total, originalTravelPrice: $originalTravelPrice, simplePricePerPerson: $simplePricePerPerson, flightIncluded: $flightIncluded, travelDate: $travelDate, rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestOfferModelImpl &&
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
  _$$BestOfferModelImplCopyWith<_$BestOfferModelImpl> get copyWith =>
      __$$BestOfferModelImplCopyWithImpl<_$BestOfferModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestOfferModelImplToJson(
      this,
    );
  }
}

abstract class _BestOfferModel implements BestOfferModel {
  const factory _BestOfferModel(
      {required final int total,
      @JsonKey(name: 'original-travel-price')
      required final int originalTravelPrice,
      @JsonKey(name: 'simple-price-per-person')
      required final int simplePricePerPerson,
      @JsonKey(name: 'flight-included') required final bool flightIncluded,
      @JsonKey(name: 'travel-date') required final TravelDateModel travelDate,
      required final RoomsModel rooms}) = _$BestOfferModelImpl;

  factory _BestOfferModel.fromJson(Map<String, dynamic> json) =
      _$BestOfferModelImpl.fromJson;

  @override
  int get total;
  @override
  @JsonKey(name: 'original-travel-price')
  int get originalTravelPrice;
  @override
  @JsonKey(name: 'simple-price-per-person')
  int get simplePricePerPerson;
  @override
  @JsonKey(name: 'flight-included')
  bool get flightIncluded;
  @override
  @JsonKey(name: 'travel-date')
  TravelDateModel get travelDate;
  @override
  RoomsModel get rooms;
  @override
  @JsonKey(ignore: true)
  _$$BestOfferModelImplCopyWith<_$BestOfferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelDateModel _$TravelDateModelFromJson(Map<String, dynamic> json) {
  return _TravelDateModel.fromJson(json);
}

/// @nodoc
mixin _$TravelDateModel {
  @JsonKey(name: 'departure-date')
  String get departureDate => throw _privateConstructorUsedError;

  @JsonKey(name: 'return-date')
  String get returnDate => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  int get nights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelDateModelCopyWith<TravelDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDateModelCopyWith<$Res> {
  factory $TravelDateModelCopyWith(
          TravelDateModel value, $Res Function(TravelDateModel) then) =
      _$TravelDateModelCopyWithImpl<$Res, TravelDateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'departure-date') String departureDate,
      @JsonKey(name: 'return-date') String returnDate,
      int days,
      int nights});
}

/// @nodoc
class _$TravelDateModelCopyWithImpl<$Res, $Val extends TravelDateModel>
    implements $TravelDateModelCopyWith<$Res> {
  _$TravelDateModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TravelDateModelImplCopyWith<$Res>
    implements $TravelDateModelCopyWith<$Res> {
  factory _$$TravelDateModelImplCopyWith(_$TravelDateModelImpl value,
          $Res Function(_$TravelDateModelImpl) then) =
      __$$TravelDateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'departure-date') String departureDate,
      @JsonKey(name: 'return-date') String returnDate,
      int days,
      int nights});
}

/// @nodoc
class __$$TravelDateModelImplCopyWithImpl<$Res>
    extends _$TravelDateModelCopyWithImpl<$Res, _$TravelDateModelImpl>
    implements _$$TravelDateModelImplCopyWith<$Res> {
  __$$TravelDateModelImplCopyWithImpl(
      _$TravelDateModelImpl _value, $Res Function(_$TravelDateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departureDate = null,
    Object? returnDate = null,
    Object? days = null,
    Object? nights = null,
  }) {
    return _then(_$TravelDateModelImpl(
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
class _$TravelDateModelImpl implements _TravelDateModel {
  const _$TravelDateModelImpl(
      {@JsonKey(name: 'departure-date') required this.departureDate,
      @JsonKey(name: 'return-date') required this.returnDate,
      required this.days,
      required this.nights});

  factory _$TravelDateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelDateModelImplFromJson(json);

  @override
  @JsonKey(name: 'departure-date')
  final String departureDate;
  @override
  @JsonKey(name: 'return-date')
  final String returnDate;
  @override
  final int days;
  @override
  final int nights;

  @override
  String toString() {
    return 'TravelDateModel(departureDate: $departureDate, returnDate: $returnDate, days: $days, nights: $nights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDateModelImpl &&
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
  _$$TravelDateModelImplCopyWith<_$TravelDateModelImpl> get copyWith =>
      __$$TravelDateModelImplCopyWithImpl<_$TravelDateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelDateModelImplToJson(
      this,
    );
  }
}

abstract class _TravelDateModel implements TravelDateModel {
  const factory _TravelDateModel(
      {@JsonKey(name: 'departure-date') required final String departureDate,
      @JsonKey(name: 'return-date') required final String returnDate,
      required final int days,
      required final int nights}) = _$TravelDateModelImpl;

  factory _TravelDateModel.fromJson(Map<String, dynamic> json) =
      _$TravelDateModelImpl.fromJson;

  @override
  @JsonKey(name: 'departure-date')
  String get departureDate;
  @override
  @JsonKey(name: 'return-date')
  String get returnDate;
  @override
  int get days;
  @override
  int get nights;
  @override
  @JsonKey(ignore: true)
  _$$TravelDateModelImplCopyWith<_$TravelDateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomsModel _$RoomsModelFromJson(Map<String, dynamic> json) {
  return _RoomsModel.fromJson(json);
}

/// @nodoc
mixin _$RoomsModel {
  @JsonKey(name: 'overall')
  OverallRoomModel get overall => throw _privateConstructorUsedError;

  @JsonKey(name: 'room-groups')
  List<RoomGroupModel> get roomGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsModelCopyWith<RoomsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsModelCopyWith<$Res> {
  factory $RoomsModelCopyWith(
          RoomsModel value, $Res Function(RoomsModel) then) =
      _$RoomsModelCopyWithImpl<$Res, RoomsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'overall') OverallRoomModel overall,
      @JsonKey(name: 'room-groups') List<RoomGroupModel> roomGroups});

  $OverallRoomModelCopyWith<$Res> get overall;
}

/// @nodoc
class _$RoomsModelCopyWithImpl<$Res, $Val extends RoomsModel>
    implements $RoomsModelCopyWith<$Res> {
  _$RoomsModelCopyWithImpl(this._value, this._then);

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
              as OverallRoomModel,
      roomGroups: null == roomGroups
          ? _value.roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as List<RoomGroupModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OverallRoomModelCopyWith<$Res> get overall {
    return $OverallRoomModelCopyWith<$Res>(_value.overall, (value) {
      return _then(_value.copyWith(overall: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomsModelImplCopyWith<$Res>
    implements $RoomsModelCopyWith<$Res> {
  factory _$$RoomsModelImplCopyWith(
          _$RoomsModelImpl value, $Res Function(_$RoomsModelImpl) then) =
      __$$RoomsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'overall') OverallRoomModel overall,
      @JsonKey(name: 'room-groups') List<RoomGroupModel> roomGroups});

  @override
  $OverallRoomModelCopyWith<$Res> get overall;
}

/// @nodoc
class __$$RoomsModelImplCopyWithImpl<$Res>
    extends _$RoomsModelCopyWithImpl<$Res, _$RoomsModelImpl>
    implements _$$RoomsModelImplCopyWith<$Res> {
  __$$RoomsModelImplCopyWithImpl(
      _$RoomsModelImpl _value, $Res Function(_$RoomsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = null,
    Object? roomGroups = null,
  }) {
    return _then(_$RoomsModelImpl(
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as OverallRoomModel,
      roomGroups: null == roomGroups
          ? _value._roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as List<RoomGroupModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomsModelImpl implements _RoomsModel {
  const _$RoomsModelImpl({@JsonKey(name: 'overall') required this.overall,
    @JsonKey(name: 'room-groups') required final List<
        RoomGroupModel> roomGroups})
      : _roomGroups = roomGroups;

  factory _$RoomsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomsModelImplFromJson(json);

  @override
  @JsonKey(name: 'overall')
  final OverallRoomModel overall;
  final List<RoomGroupModel> _roomGroups;
  @override
  @JsonKey(name: 'room-groups')
  List<RoomGroupModel> get roomGroups {
    if (_roomGroups is EqualUnmodifiableListView) return _roomGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomGroups);
  }

  @override
  String toString() {
    return 'RoomsModel(overall: $overall, roomGroups: $roomGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsModelImpl &&
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
  _$$RoomsModelImplCopyWith<_$RoomsModelImpl> get copyWith =>
      __$$RoomsModelImplCopyWithImpl<_$RoomsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomsModelImplToJson(
      this,
    );
  }
}

abstract class _RoomsModel implements RoomsModel {
  const factory _RoomsModel(
      {@JsonKey(name: 'overall') required final OverallRoomModel overall,
      @JsonKey(name: 'room-groups')
      required final List<RoomGroupModel> roomGroups}) = _$RoomsModelImpl;

  factory _RoomsModel.fromJson(Map<String, dynamic> json) =
      _$RoomsModelImpl.fromJson;

  @override
  @JsonKey(name: 'overall')
  OverallRoomModel get overall;
  @override
  @JsonKey(name: 'room-groups')
  List<RoomGroupModel> get roomGroups;
  @override
  @JsonKey(ignore: true)
  _$$RoomsModelImplCopyWith<_$RoomsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OverallRoomModel _$OverallRoomModelFromJson(Map<String, dynamic> json) {
  return _OverallRoomModel.fromJson(json);
}

/// @nodoc
mixin _$OverallRoomModel {
  String get boarding => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(name: 'adult-count')
  int get adultCount => throw _privateConstructorUsedError;

  @JsonKey(name: 'children-count')
  int get childrenCount => throw _privateConstructorUsedError;

  @JsonKey(name: 'same-boarding')
  bool get sameBoarding => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverallRoomModelCopyWith<OverallRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverallRoomModelCopyWith<$Res> {
  factory $OverallRoomModelCopyWith(
          OverallRoomModel value, $Res Function(OverallRoomModel) then) =
      _$OverallRoomModelCopyWithImpl<$Res, OverallRoomModel>;
  @useResult
  $Res call(
      {String boarding,
      String name,
      @JsonKey(name: 'adult-count') int adultCount,
      @JsonKey(name: 'children-count') int childrenCount,
      @JsonKey(name: 'same-boarding') bool sameBoarding});
}

/// @nodoc
class _$OverallRoomModelCopyWithImpl<$Res, $Val extends OverallRoomModel>
    implements $OverallRoomModelCopyWith<$Res> {
  _$OverallRoomModelCopyWithImpl(this._value, this._then);

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
abstract class _$$OverallRoomModelImplCopyWith<$Res>
    implements $OverallRoomModelCopyWith<$Res> {
  factory _$$OverallRoomModelImplCopyWith(_$OverallRoomModelImpl value,
          $Res Function(_$OverallRoomModelImpl) then) =
      __$$OverallRoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String boarding,
      String name,
      @JsonKey(name: 'adult-count') int adultCount,
      @JsonKey(name: 'children-count') int childrenCount,
      @JsonKey(name: 'same-boarding') bool sameBoarding});
}

/// @nodoc
class __$$OverallRoomModelImplCopyWithImpl<$Res>
    extends _$OverallRoomModelCopyWithImpl<$Res, _$OverallRoomModelImpl>
    implements _$$OverallRoomModelImplCopyWith<$Res> {
  __$$OverallRoomModelImplCopyWithImpl(_$OverallRoomModelImpl _value,
      $Res Function(_$OverallRoomModelImpl) _then)
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
    return _then(_$OverallRoomModelImpl(
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
class _$OverallRoomModelImpl implements _OverallRoomModel {
  const _$OverallRoomModelImpl(
      {required this.boarding,
      required this.name,
      @JsonKey(name: 'adult-count') required this.adultCount,
      @JsonKey(name: 'children-count') required this.childrenCount,
      @JsonKey(name: 'same-boarding') required this.sameBoarding});

  factory _$OverallRoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverallRoomModelImplFromJson(json);

  @override
  final String boarding;
  @override
  final String name;
  @override
  @JsonKey(name: 'adult-count')
  final int adultCount;
  @override
  @JsonKey(name: 'children-count')
  final int childrenCount;
  @override
  @JsonKey(name: 'same-boarding')
  final bool sameBoarding;

  @override
  String toString() {
    return 'OverallRoomModel(boarding: $boarding, name: $name, adultCount: $adultCount, childrenCount: $childrenCount, sameBoarding: $sameBoarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallRoomModelImpl &&
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
  _$$OverallRoomModelImplCopyWith<_$OverallRoomModelImpl> get copyWith =>
      __$$OverallRoomModelImplCopyWithImpl<_$OverallRoomModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverallRoomModelImplToJson(
      this,
    );
  }
}

abstract class _OverallRoomModel implements OverallRoomModel {
  const factory _OverallRoomModel({required final String boarding,
    required final String name,
    @JsonKey(name: 'adult-count') required final int adultCount,
    @JsonKey(name: 'children-count') required final int childrenCount,
    @JsonKey(name: 'same-boarding') required final bool sameBoarding}) =
  _$OverallRoomModelImpl;

  factory _OverallRoomModel.fromJson(Map<String, dynamic> json) =
      _$OverallRoomModelImpl.fromJson;

  @override
  String get boarding;
  @override
  String get name;
  @override
  @JsonKey(name: 'adult-count')
  int get adultCount;
  @override
  @JsonKey(name: 'children-count')
  int get childrenCount;
  @override
  @JsonKey(name: 'same-boarding')
  bool get sameBoarding;
  @override
  @JsonKey(ignore: true)
  _$$OverallRoomModelImplCopyWith<_$OverallRoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomGroupModel _$RoomGroupModelFromJson(Map<String, dynamic> json) {
  return _RoomGroupModel.fromJson(json);
}

/// @nodoc
mixin _$RoomGroupModel {
  String get boarding => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomGroupModelCopyWith<RoomGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomGroupModelCopyWith<$Res> {
  factory $RoomGroupModelCopyWith(
          RoomGroupModel value, $Res Function(RoomGroupModel) then) =
      _$RoomGroupModelCopyWithImpl<$Res, RoomGroupModel>;
  @useResult
  $Res call({String boarding, String name, int quantity});
}

/// @nodoc
class _$RoomGroupModelCopyWithImpl<$Res, $Val extends RoomGroupModel>
    implements $RoomGroupModelCopyWith<$Res> {
  _$RoomGroupModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RoomGroupModelImplCopyWith<$Res>
    implements $RoomGroupModelCopyWith<$Res> {
  factory _$$RoomGroupModelImplCopyWith(_$RoomGroupModelImpl value,
          $Res Function(_$RoomGroupModelImpl) then) =
      __$$RoomGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String boarding, String name, int quantity});
}

/// @nodoc
class __$$RoomGroupModelImplCopyWithImpl<$Res>
    extends _$RoomGroupModelCopyWithImpl<$Res, _$RoomGroupModelImpl>
    implements _$$RoomGroupModelImplCopyWith<$Res> {
  __$$RoomGroupModelImplCopyWithImpl(
      _$RoomGroupModelImpl _value, $Res Function(_$RoomGroupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boarding = null,
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$RoomGroupModelImpl(
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
class _$RoomGroupModelImpl implements _RoomGroupModel {
  const _$RoomGroupModelImpl(
      {required this.boarding, required this.name, required this.quantity});

  factory _$RoomGroupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomGroupModelImplFromJson(json);

  @override
  final String boarding;
  @override
  final String name;
  @override
  final int quantity;

  @override
  String toString() {
    return 'RoomGroupModel(boarding: $boarding, name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomGroupModelImpl &&
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
  _$$RoomGroupModelImplCopyWith<_$RoomGroupModelImpl> get copyWith =>
      __$$RoomGroupModelImplCopyWithImpl<_$RoomGroupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomGroupModelImplToJson(
      this,
    );
  }
}

abstract class _RoomGroupModel implements RoomGroupModel {
  const factory _RoomGroupModel(
      {required final String boarding,
      required final String name,
      required final int quantity}) = _$RoomGroupModelImpl;

  factory _RoomGroupModel.fromJson(Map<String, dynamic> json) =
      _$RoomGroupModelImpl.fromJson;

  @override
  String get boarding;
  @override
  String get name;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$RoomGroupModelImplCopyWith<_$RoomGroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsModel _$AnalyticsModelFromJson(Map<String, dynamic> json) {
  return _AnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsModel {
  @JsonKey(name: 'select_item.item.0')
  AnalyticsItemModel? get selectItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsModelCopyWith<AnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsModelCopyWith<$Res> {
  factory $AnalyticsModelCopyWith(
          AnalyticsModel value, $Res Function(AnalyticsModel) then) =
      _$AnalyticsModelCopyWithImpl<$Res, AnalyticsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'select_item.item.0') AnalyticsItemModel? selectItem});

  $AnalyticsItemModelCopyWith<$Res>? get selectItem;
}

/// @nodoc
class _$AnalyticsModelCopyWithImpl<$Res, $Val extends AnalyticsModel>
    implements $AnalyticsModelCopyWith<$Res> {
  _$AnalyticsModelCopyWithImpl(this._value, this._then);

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
              as AnalyticsItemModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsItemModelCopyWith<$Res>? get selectItem {
    if (_value.selectItem == null) {
      return null;
    }

    return $AnalyticsItemModelCopyWith<$Res>(_value.selectItem!, (value) {
      return _then(_value.copyWith(selectItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsModelImplCopyWith<$Res>
    implements $AnalyticsModelCopyWith<$Res> {
  factory _$$AnalyticsModelImplCopyWith(_$AnalyticsModelImpl value,
          $Res Function(_$AnalyticsModelImpl) then) =
      __$$AnalyticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'select_item.item.0') AnalyticsItemModel? selectItem});

  @override
  $AnalyticsItemModelCopyWith<$Res>? get selectItem;
}

/// @nodoc
class __$$AnalyticsModelImplCopyWithImpl<$Res>
    extends _$AnalyticsModelCopyWithImpl<$Res, _$AnalyticsModelImpl>
    implements _$$AnalyticsModelImplCopyWith<$Res> {
  __$$AnalyticsModelImplCopyWithImpl(
      _$AnalyticsModelImpl _value, $Res Function(_$AnalyticsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectItem = freezed,
  }) {
    return _then(_$AnalyticsModelImpl(
      selectItem: freezed == selectItem
          ? _value.selectItem
          : selectItem // ignore: cast_nullable_to_non_nullable
              as AnalyticsItemModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsModelImpl implements _AnalyticsModel {
  const _$AnalyticsModelImpl(
      {@JsonKey(name: 'select_item.item.0') this.selectItem});

  factory _$AnalyticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsModelImplFromJson(json);

  @override
  @JsonKey(name: 'select_item.item.0')
  final AnalyticsItemModel? selectItem;

  @override
  String toString() {
    return 'AnalyticsModel(selectItem: $selectItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsModelImpl &&
            (identical(other.selectItem, selectItem) ||
                other.selectItem == selectItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsModelImplCopyWith<_$AnalyticsModelImpl> get copyWith =>
      __$$AnalyticsModelImplCopyWithImpl<_$AnalyticsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsModelImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsModel implements AnalyticsModel {
  const factory _AnalyticsModel(
      {@JsonKey(name: 'select_item.item.0')
      final AnalyticsItemModel? selectItem}) = _$AnalyticsModelImpl;

  factory _AnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$AnalyticsModelImpl.fromJson;

  @override
  @JsonKey(name: 'select_item.item.0')
  AnalyticsItemModel? get selectItem;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsModelImplCopyWith<_$AnalyticsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnalyticsItemModel _$AnalyticsItemModelFromJson(Map<String, dynamic> json) {
  return _AnalyticsItemModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsItemModel {
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
  $AnalyticsItemModelCopyWith<AnalyticsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsItemModelCopyWith<$Res> {
  factory $AnalyticsItemModelCopyWith(
          AnalyticsItemModel value, $Res Function(AnalyticsItemModel) then) =
      _$AnalyticsItemModelCopyWithImpl<$Res, AnalyticsItemModel>;
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
class _$AnalyticsItemModelCopyWithImpl<$Res, $Val extends AnalyticsItemModel>
    implements $AnalyticsItemModelCopyWith<$Res> {
  _$AnalyticsItemModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AnalyticsItemModelImplCopyWith<$Res>
    implements $AnalyticsItemModelCopyWith<$Res> {
  factory _$$AnalyticsItemModelImplCopyWith(_$AnalyticsItemModelImpl value,
          $Res Function(_$AnalyticsItemModelImpl) then) =
      __$$AnalyticsItemModelImplCopyWithImpl<$Res>;
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
class __$$AnalyticsItemModelImplCopyWithImpl<$Res>
    extends _$AnalyticsItemModelCopyWithImpl<$Res, _$AnalyticsItemModelImpl>
    implements _$$AnalyticsItemModelImplCopyWith<$Res> {
  __$$AnalyticsItemModelImplCopyWithImpl(_$AnalyticsItemModelImpl _value,
      $Res Function(_$AnalyticsItemModelImpl) _then)
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
    return _then(_$AnalyticsItemModelImpl(
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
class _$AnalyticsItemModelImpl implements _AnalyticsItemModel {
  const _$AnalyticsItemModelImpl(
      {required this.currency,
      required this.itemCategory,
      required this.itemCategory2,
      required this.itemId,
      required this.itemName,
      required this.itemRooms,
      required this.price,
      required this.quantity});

  factory _$AnalyticsItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsItemModelImplFromJson(json);

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
    return 'AnalyticsItemModel(currency: $currency, itemCategory: $itemCategory, itemCategory2: $itemCategory2, itemId: $itemId, itemName: $itemName, itemRooms: $itemRooms, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsItemModelImpl &&
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
  _$$AnalyticsItemModelImplCopyWith<_$AnalyticsItemModelImpl> get copyWith =>
      __$$AnalyticsItemModelImplCopyWithImpl<_$AnalyticsItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsItemModelImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsItemModel implements AnalyticsItemModel {
  const factory _AnalyticsItemModel(
      {required final String currency,
      required final String itemCategory,
      required final String itemCategory2,
      required final String itemId,
      required final String itemName,
      required final String itemRooms,
      required final String price,
      required final String quantity}) = _$AnalyticsItemModelImpl;

  factory _AnalyticsItemModel.fromJson(Map<String, dynamic> json) =
      _$AnalyticsItemModelImpl.fromJson;

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
  _$$AnalyticsItemModelImplCopyWith<_$AnalyticsItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
