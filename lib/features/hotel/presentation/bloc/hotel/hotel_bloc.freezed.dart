// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HotelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLoading) fetchHotel,
    required TResult Function(HotelEntity hotel) addFavoriteHotel,
    required TResult Function(String hotelId) removeFavoriteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool showLoading)? fetchHotel,
    TResult? Function(HotelEntity hotel)? addFavoriteHotel,
    TResult? Function(String hotelId)? removeFavoriteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showLoading)? fetchHotel,
    TResult Function(HotelEntity hotel)? addFavoriteHotel,
    TResult Function(String hotelId)? removeFavoriteHotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHotel value) fetchHotel,
    required TResult Function(AddFavoriteHotel value) addFavoriteHotel,
    required TResult Function(RemoveFavoriteHotel value) removeFavoriteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHotel value)? fetchHotel,
    TResult? Function(AddFavoriteHotel value)? addFavoriteHotel,
    TResult? Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHotel value)? fetchHotel,
    TResult Function(AddFavoriteHotel value)? addFavoriteHotel,
    TResult Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelEventCopyWith<$Res> {
  factory $HotelEventCopyWith(
          HotelEvent value, $Res Function(HotelEvent) then) =
      _$HotelEventCopyWithImpl<$Res, HotelEvent>;
}

/// @nodoc
class _$HotelEventCopyWithImpl<$Res, $Val extends HotelEvent>
    implements $HotelEventCopyWith<$Res> {
  _$HotelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchHotelImplCopyWith<$Res> {
  factory _$$FetchHotelImplCopyWith(
          _$FetchHotelImpl value, $Res Function(_$FetchHotelImpl) then) =
      __$$FetchHotelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showLoading});
}

/// @nodoc
class __$$FetchHotelImplCopyWithImpl<$Res>
    extends _$HotelEventCopyWithImpl<$Res, _$FetchHotelImpl>
    implements _$$FetchHotelImplCopyWith<$Res> {
  __$$FetchHotelImplCopyWithImpl(
      _$FetchHotelImpl _value, $Res Function(_$FetchHotelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoading = null,
  }) {
    return _then(_$FetchHotelImpl(
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchHotelImpl implements FetchHotel {
  const _$FetchHotelImpl({this.showLoading = false});

  @override
  @JsonKey()
  final bool showLoading;

  @override
  String toString() {
    return 'HotelEvent.fetchHotel(showLoading: $showLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHotelImpl &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchHotelImplCopyWith<_$FetchHotelImpl> get copyWith =>
      __$$FetchHotelImplCopyWithImpl<_$FetchHotelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showLoading) fetchHotel,
    required TResult Function(HotelEntity hotel) addFavoriteHotel,
    required TResult Function(String hotelId) removeFavoriteHotel,
  }) {
    return fetchHotel(showLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
TResult? Function(bool showLoading)? fetchHotel,
    TResult? Function(HotelEntity hotel)? addFavoriteHotel,
    TResult? Function(String hotelId)? removeFavoriteHotel,
  }) {
return fetchHotel?.call(showLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
TResult Function(bool showLoading)? fetchHotel,
    TResult Function(HotelEntity hotel)? addFavoriteHotel,
    TResult Function(String hotelId)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (fetchHotel != null) {
return fetchHotel(showLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHotel value) fetchHotel,
    required TResult Function(AddFavoriteHotel value) addFavoriteHotel,
    required TResult Function(RemoveFavoriteHotel value) removeFavoriteHotel,
  }) {
    return fetchHotel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHotel value)? fetchHotel,
    TResult? Function(AddFavoriteHotel value)? addFavoriteHotel,
    TResult? Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
  }) {
    return fetchHotel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHotel value)? fetchHotel,
    TResult Function(AddFavoriteHotel value)? addFavoriteHotel,
    TResult Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (fetchHotel != null) {
      return fetchHotel(this);
    }
    return orElse();
  }
}

abstract class FetchHotel implements HotelEvent {
const factory FetchHotel({final bool showLoading}) = _$FetchHotelImpl;

bool get showLoading;
@JsonKey(ignore: true)
_$$FetchHotelImplCopyWith<_$FetchHotelImpl> get copyWith =>
throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavoriteHotelImplCopyWith<$Res> {
  factory _$$AddFavoriteHotelImplCopyWith(_$AddFavoriteHotelImpl value,
          $Res Function(_$AddFavoriteHotelImpl) then) =
      __$$AddFavoriteHotelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HotelEntity hotel});

  $HotelEntityCopyWith<$Res> get hotel;
}

/// @nodoc
class __$$AddFavoriteHotelImplCopyWithImpl<$Res>
    extends _$HotelEventCopyWithImpl<$Res, _$AddFavoriteHotelImpl>
    implements _$$AddFavoriteHotelImplCopyWith<$Res> {
  __$$AddFavoriteHotelImplCopyWithImpl(_$AddFavoriteHotelImpl _value,
      $Res Function(_$AddFavoriteHotelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
  }) {
    return _then(_$AddFavoriteHotelImpl(
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as HotelEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelEntityCopyWith<$Res> get hotel {
    return $HotelEntityCopyWith<$Res>(_value.hotel, (value) {
      return _then(_value.copyWith(hotel: value));
    });
  }
}

/// @nodoc

class _$AddFavoriteHotelImpl implements AddFavoriteHotel {
  const _$AddFavoriteHotelImpl({required this.hotel});

  @override
  final HotelEntity hotel;

  @override
  String toString() {
    return 'HotelEvent.addFavoriteHotel(hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteHotelImpl &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteHotelImplCopyWith<_$AddFavoriteHotelImpl> get copyWith =>
      __$$AddFavoriteHotelImplCopyWithImpl<_$AddFavoriteHotelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
required TResult Function(bool showLoading) fetchHotel,
    required TResult Function(HotelEntity hotel) addFavoriteHotel,
    required TResult Function(String hotelId) removeFavoriteHotel,
  }) {
    return addFavoriteHotel(hotel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
TResult? Function(bool showLoading)? fetchHotel,
    TResult? Function(HotelEntity hotel)? addFavoriteHotel,
    TResult? Function(String hotelId)? removeFavoriteHotel,
  }) {
    return addFavoriteHotel?.call(hotel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
TResult Function(bool showLoading)? fetchHotel,
    TResult Function(HotelEntity hotel)? addFavoriteHotel,
    TResult Function(String hotelId)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (addFavoriteHotel != null) {
      return addFavoriteHotel(hotel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHotel value) fetchHotel,
    required TResult Function(AddFavoriteHotel value) addFavoriteHotel,
    required TResult Function(RemoveFavoriteHotel value) removeFavoriteHotel,
  }) {
    return addFavoriteHotel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHotel value)? fetchHotel,
    TResult? Function(AddFavoriteHotel value)? addFavoriteHotel,
    TResult? Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
  }) {
    return addFavoriteHotel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHotel value)? fetchHotel,
    TResult Function(AddFavoriteHotel value)? addFavoriteHotel,
    TResult Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (addFavoriteHotel != null) {
      return addFavoriteHotel(this);
    }
    return orElse();
  }
}

abstract class AddFavoriteHotel implements HotelEvent {
  const factory AddFavoriteHotel({required final HotelEntity hotel}) =
      _$AddFavoriteHotelImpl;

  HotelEntity get hotel;
  @JsonKey(ignore: true)
  _$$AddFavoriteHotelImplCopyWith<_$AddFavoriteHotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteHotelImplCopyWith<$Res> {
  factory _$$RemoveFavoriteHotelImplCopyWith(_$RemoveFavoriteHotelImpl value,
          $Res Function(_$RemoveFavoriteHotelImpl) then) =
      __$$RemoveFavoriteHotelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String hotelId});
}

/// @nodoc
class __$$RemoveFavoriteHotelImplCopyWithImpl<$Res>
    extends _$HotelEventCopyWithImpl<$Res, _$RemoveFavoriteHotelImpl>
    implements _$$RemoveFavoriteHotelImplCopyWith<$Res> {
  __$$RemoveFavoriteHotelImplCopyWithImpl(_$RemoveFavoriteHotelImpl _value,
      $Res Function(_$RemoveFavoriteHotelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
  }) {
    return _then(_$RemoveFavoriteHotelImpl(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteHotelImpl implements RemoveFavoriteHotel {
  const _$RemoveFavoriteHotelImpl({required this.hotelId});

  @override
  final String hotelId;

  @override
  String toString() {
    return 'HotelEvent.removeFavoriteHotel(hotelId: $hotelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteHotelImpl &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteHotelImplCopyWith<_$RemoveFavoriteHotelImpl> get copyWith =>
      __$$RemoveFavoriteHotelImplCopyWithImpl<_$RemoveFavoriteHotelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
required TResult Function(bool showLoading) fetchHotel,
    required TResult Function(HotelEntity hotel) addFavoriteHotel,
    required TResult Function(String hotelId) removeFavoriteHotel,
  }) {
    return removeFavoriteHotel(hotelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
TResult? Function(bool showLoading)? fetchHotel,
    TResult? Function(HotelEntity hotel)? addFavoriteHotel,
    TResult? Function(String hotelId)? removeFavoriteHotel,
  }) {
    return removeFavoriteHotel?.call(hotelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
TResult Function(bool showLoading)? fetchHotel,
    TResult Function(HotelEntity hotel)? addFavoriteHotel,
    TResult Function(String hotelId)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (removeFavoriteHotel != null) {
      return removeFavoriteHotel(hotelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHotel value) fetchHotel,
    required TResult Function(AddFavoriteHotel value) addFavoriteHotel,
    required TResult Function(RemoveFavoriteHotel value) removeFavoriteHotel,
  }) {
    return removeFavoriteHotel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHotel value)? fetchHotel,
    TResult? Function(AddFavoriteHotel value)? addFavoriteHotel,
    TResult? Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
  }) {
    return removeFavoriteHotel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHotel value)? fetchHotel,
    TResult Function(AddFavoriteHotel value)? addFavoriteHotel,
    TResult Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (removeFavoriteHotel != null) {
      return removeFavoriteHotel(this);
    }
    return orElse();
  }
}

abstract class RemoveFavoriteHotel implements HotelEvent {
  const factory RemoveFavoriteHotel({required final String hotelId}) =
      _$RemoveFavoriteHotelImpl;

  String get hotelId;
  @JsonKey(ignore: true)
  _$$RemoveFavoriteHotelImplCopyWith<_$RemoveFavoriteHotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HotelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelEntity> hotels) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelEntity> hotels)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelEntity> hotels)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelStateCopyWith<$Res> {
  factory $HotelStateCopyWith(
          HotelState value, $Res Function(HotelState) then) =
      _$HotelStateCopyWithImpl<$Res, HotelState>;
}

/// @nodoc
class _$HotelStateCopyWithImpl<$Res, $Val extends HotelState>
    implements $HotelStateCopyWith<$Res> {
  _$HotelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HotelState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelEntity> hotels) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelEntity> hotels)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelEntity> hotels)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HotelState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HotelState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelEntity> hotels) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelEntity> hotels)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelEntity> hotels)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HotelState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HotelEntity> hotels});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = null,
  }) {
    return _then(_$LoadedImpl(
      null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<HotelEntity> hotels) : _hotels = hotels;

  final List<HotelEntity> _hotels;
  @override
  List<HotelEntity> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'HotelState.loaded(hotels: $hotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelEntity> hotels) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(hotels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelEntity> hotels)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(hotels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelEntity> hotels)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(hotels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HotelState {
  const factory _Loaded(final List<HotelEntity> hotels) = _$LoadedImpl;

  List<HotelEntity> get hotels;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HotelState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelEntity> hotels) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelEntity> hotels)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelEntity> hotels)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HotelState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
