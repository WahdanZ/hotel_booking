// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_hotel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteHotelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavoriteHotel,
    required TResult Function(String hotelId) removeFavoriteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavoriteHotel,
    TResult? Function(String hotelId)? removeFavoriteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavoriteHotel,
    TResult Function(String hotelId)? removeFavoriteHotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFavoriteHotel value) fetchFavoriteHotel,
    required TResult Function(RemoveFavoriteHotel value) removeFavoriteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFavoriteHotel value)? fetchFavoriteHotel,
    TResult? Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFavoriteHotel value)? fetchFavoriteHotel,
    TResult Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteHotelEventCopyWith<$Res> {
  factory $FavoriteHotelEventCopyWith(
          FavoriteHotelEvent value, $Res Function(FavoriteHotelEvent) then) =
      _$FavoriteHotelEventCopyWithImpl<$Res, FavoriteHotelEvent>;
}

/// @nodoc
class _$FavoriteHotelEventCopyWithImpl<$Res, $Val extends FavoriteHotelEvent>
    implements $FavoriteHotelEventCopyWith<$Res> {
  _$FavoriteHotelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchFavoriteHotelImplCopyWith<$Res> {
  factory _$$FetchFavoriteHotelImplCopyWith(_$FetchFavoriteHotelImpl value,
          $Res Function(_$FetchFavoriteHotelImpl) then) =
      __$$FetchFavoriteHotelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFavoriteHotelImplCopyWithImpl<$Res>
    extends _$FavoriteHotelEventCopyWithImpl<$Res, _$FetchFavoriteHotelImpl>
    implements _$$FetchFavoriteHotelImplCopyWith<$Res> {
  __$$FetchFavoriteHotelImplCopyWithImpl(_$FetchFavoriteHotelImpl _value,
      $Res Function(_$FetchFavoriteHotelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFavoriteHotelImpl implements FetchFavoriteHotel {
  const _$FetchFavoriteHotelImpl();

  @override
  String toString() {
    return 'FavoriteHotelEvent.fetchFavoriteHotel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFavoriteHotelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavoriteHotel,
    required TResult Function(String hotelId) removeFavoriteHotel,
  }) {
    return fetchFavoriteHotel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavoriteHotel,
    TResult? Function(String hotelId)? removeFavoriteHotel,
  }) {
    return fetchFavoriteHotel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavoriteHotel,
    TResult Function(String hotelId)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (fetchFavoriteHotel != null) {
      return fetchFavoriteHotel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFavoriteHotel value) fetchFavoriteHotel,
    required TResult Function(RemoveFavoriteHotel value) removeFavoriteHotel,
  }) {
    return fetchFavoriteHotel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFavoriteHotel value)? fetchFavoriteHotel,
    TResult? Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
  }) {
    return fetchFavoriteHotel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFavoriteHotel value)? fetchFavoriteHotel,
    TResult Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (fetchFavoriteHotel != null) {
      return fetchFavoriteHotel(this);
    }
    return orElse();
  }
}

abstract class FetchFavoriteHotel implements FavoriteHotelEvent {
  const factory FetchFavoriteHotel() = _$FetchFavoriteHotelImpl;
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
    extends _$FavoriteHotelEventCopyWithImpl<$Res, _$RemoveFavoriteHotelImpl>
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
    return 'FavoriteHotelEvent.removeFavoriteHotel(hotelId: $hotelId)';
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
    required TResult Function() fetchFavoriteHotel,
    required TResult Function(String hotelId) removeFavoriteHotel,
  }) {
    return removeFavoriteHotel(hotelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavoriteHotel,
    TResult? Function(String hotelId)? removeFavoriteHotel,
  }) {
    return removeFavoriteHotel?.call(hotelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavoriteHotel,
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
    required TResult Function(FetchFavoriteHotel value) fetchFavoriteHotel,
    required TResult Function(RemoveFavoriteHotel value) removeFavoriteHotel,
  }) {
    return removeFavoriteHotel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchFavoriteHotel value)? fetchFavoriteHotel,
    TResult? Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
  }) {
    return removeFavoriteHotel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFavoriteHotel value)? fetchFavoriteHotel,
    TResult Function(RemoveFavoriteHotel value)? removeFavoriteHotel,
    required TResult orElse(),
  }) {
    if (removeFavoriteHotel != null) {
      return removeFavoriteHotel(this);
    }
    return orElse();
  }
}

abstract class RemoveFavoriteHotel implements FavoriteHotelEvent {
  const factory RemoveFavoriteHotel({required final String hotelId}) =
      _$RemoveFavoriteHotelImpl;

  String get hotelId;
  @JsonKey(ignore: true)
  _$$RemoveFavoriteHotelImplCopyWith<_$RemoveFavoriteHotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteHotelState {
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
    required TResult Function(FavoriteHotelStateLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(FavoriteHotelStateLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(FavoriteHotelStateLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteHotelStateCopyWith<$Res> {
  factory $FavoriteHotelStateCopyWith(
          FavoriteHotelState value, $Res Function(FavoriteHotelState) then) =
      _$FavoriteHotelStateCopyWithImpl<$Res, FavoriteHotelState>;
}

/// @nodoc
class _$FavoriteHotelStateCopyWithImpl<$Res, $Val extends FavoriteHotelState>
    implements $FavoriteHotelStateCopyWith<$Res> {
  _$FavoriteHotelStateCopyWithImpl(this._value, this._then);

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
    extends _$FavoriteHotelStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'FavoriteHotelState.initial()';
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
    required TResult Function(FavoriteHotelStateLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(FavoriteHotelStateLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(FavoriteHotelStateLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteHotelState {
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
    extends _$FavoriteHotelStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'FavoriteHotelState.loading()';
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
    required TResult Function(FavoriteHotelStateLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(FavoriteHotelStateLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(FavoriteHotelStateLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavoriteHotelState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FavoriteHotelStateLoadedImplCopyWith<$Res> {
  factory _$$FavoriteHotelStateLoadedImplCopyWith(
          _$FavoriteHotelStateLoadedImpl value,
          $Res Function(_$FavoriteHotelStateLoadedImpl) then) =
      __$$FavoriteHotelStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HotelEntity> hotels});
}

/// @nodoc
class __$$FavoriteHotelStateLoadedImplCopyWithImpl<$Res>
    extends _$FavoriteHotelStateCopyWithImpl<$Res,
        _$FavoriteHotelStateLoadedImpl>
    implements _$$FavoriteHotelStateLoadedImplCopyWith<$Res> {
  __$$FavoriteHotelStateLoadedImplCopyWithImpl(
      _$FavoriteHotelStateLoadedImpl _value,
      $Res Function(_$FavoriteHotelStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = null,
  }) {
    return _then(_$FavoriteHotelStateLoadedImpl(
      null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<HotelEntity>,
    ));
  }
}

/// @nodoc

class _$FavoriteHotelStateLoadedImpl implements FavoriteHotelStateLoaded {
  const _$FavoriteHotelStateLoadedImpl(final List<HotelEntity> hotels)
      : _hotels = hotels;

  final List<HotelEntity> _hotels;
  @override
  List<HotelEntity> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'FavoriteHotelState.loaded(hotels: $hotels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteHotelStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteHotelStateLoadedImplCopyWith<_$FavoriteHotelStateLoadedImpl>
      get copyWith => __$$FavoriteHotelStateLoadedImplCopyWithImpl<
          _$FavoriteHotelStateLoadedImpl>(this, _$identity);

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
    required TResult Function(FavoriteHotelStateLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(FavoriteHotelStateLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(FavoriteHotelStateLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoriteHotelStateLoaded implements FavoriteHotelState {
  const factory FavoriteHotelStateLoaded(final List<HotelEntity> hotels) =
      _$FavoriteHotelStateLoadedImpl;

  List<HotelEntity> get hotels;
  @JsonKey(ignore: true)
  _$$FavoriteHotelStateLoadedImplCopyWith<_$FavoriteHotelStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$FavoriteHotelStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'FavoriteHotelState.error(error: $error)';
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
    required TResult Function(FavoriteHotelStateLoaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(FavoriteHotelStateLoaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(FavoriteHotelStateLoaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FavoriteHotelState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
