// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../base/index.dart' as _i852;
import '../base/remote/network_task_manager.dart' as _i148;
import '../features/hotel/data/mapper/hotel_mapper.dart' as _i375;
import '../features/hotel/data/remote/data_sources/hotel_remote_data_source.dart'
    as _i604;
import '../features/hotel/data/repositories/data_source.dart' as _i849;
import '../features/hotel/data/repositories/hotel_repository_imp.dart' as _i502;
import '../features/hotel/domain/repositories/hotel_repository.dart' as _i2;
import '../features/hotel/domain/use_cases/get_hotels_use_case.dart' as _i952;
import '../features/hotel/presentation/manager/hotel_bloc.dart' as _i361;
import '../route/app_router.dart' as _i1007;
import 'app_module.dart' as _i460;

const String _prod = 'prod';
const String _dev = 'dev';

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i375.HotelMapper>(() => _i375.HotelMapper());
  gh.lazySingleton<_i1007.AppRouter>(() => _i1007.AppRouter());
  gh.lazySingleton<_i148.NetworkTaskManager>(() => _i148.NetworkTaskManager());
  gh.lazySingleton<_i361.Dio>(
    () => appModule.dio,
    instanceName: 'dio_client',
  );
  gh.lazySingleton<String>(
    () => appModule.baseUrl,
    instanceName: 'base_url',
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.factory<_i849.HotelRemoteDataSource>(() => _i604.HotelRemoteDataSourceImpl(
        gh<_i361.Dio>(instanceName: 'dio_client'),
        baseUrl: gh<String>(instanceName: 'base_url'),
      ));
  gh.factory<_i2.HotelRepository>(() => _i502.HotelRepositoryImp(
        gh<_i849.HotelRemoteDataSource>(),
        gh<_i852.NetworkTaskManager>(),
        gh<_i375.HotelMapper>(),
      ));
  gh.factory<_i952.GetHotelsUseCase>(
      () => _i952.GetHotelsUseCase(gh<_i2.HotelRepository>()));
  gh.factory<_i361.HotelBloc>(() => _i361.HotelBloc(gh<_i2.HotelRepository>()));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
