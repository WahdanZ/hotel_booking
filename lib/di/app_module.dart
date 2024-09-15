import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @LazySingleton()
  @Named('base_url')
  @prod
  @dev
  String get baseUrl =>
      const String.fromEnvironment('base_url', defaultValue: "https://dkndmolrswy7b.cloudfront.net/");
  @LazySingleton()
  @Named('dio_client')
  Dio get dio =>
      Dio()..interceptors.addAll([LogInterceptor(responseBody: true)]);
}
