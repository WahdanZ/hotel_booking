// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hotel_booking/base/index.dart' as _i60;
import 'package:hotel_booking/features/hotel/data/mapper/favorite_hotel_mapper.dart'
    as _i489;
import 'package:hotel_booking/features/hotel/data/mapper/hotel_mapper.dart'
    as _i748;
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart'
    as _i298;
import 'package:hotel_booking/features/hotel/domain/use_cases/add_favorite_hotel_use_case.dart'
    as _i882;
import 'package:hotel_booking/features/hotel/domain/use_cases/get_favorite_hotels_use_case.dart'
    as _i343;
import 'package:hotel_booking/features/hotel/domain/use_cases/get_hotels_use_case.dart'
    as _i681;
import 'package:hotel_booking/features/hotel/domain/use_cases/remove_favorite_hotel_use_case.dart'
    as _i143;
import 'package:injectable/injectable.dart' as _i526;

import 'mocks.dart' as _i786;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i786.MockDio>(() => _i786.MockDio());
    gh.factory<_i489.FavoriteHotelMapper>(
        () => _i786.MockFavoriteHotelMapper());
    gh.factory<_i343.GetFavoriteHotelsUseCase>(
        () => _i786.MockGetFavoriteHotelsUseCase());
    gh.factory<_i748.HotelMapper>(() => _i786.MockHotelMapper());
    gh.factory<_i143.RemoveFavoriteHotelUseCase>(
        () => _i786.MockRemoveFavoriteHotelUseCase());
    gh.factory<_i882.AddFavoriteHotelUseCase>(
        () => _i786.MockAddFavoriteHotelUseCase());
    gh.factory<_i681.GetHotelsUseCase>(() => _i786.MockGetHotelsUseCase());
    gh.factory<_i60.NetworkTaskManager>(() => _i786.MockNetworkTaskManager());
    gh.factory<_i298.HotelLocalDataSource>(
        () => _i786.MockHotelLocalDataSource());
    gh.factory<_i298.HotelRemoteDataSource>(
        () => _i786.MockHotelRemoteDataSource());
    return this;
  }
}
