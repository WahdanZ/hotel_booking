import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hotel_booking/di/injector.dart';
import 'package:hotel_booking/generated/l10n.dart';
import 'package:hotel_booking/route/app_router.dart';
import 'package:injectable/injectable.dart';

import 'base/logger/logger.dart';
import 'base/theme/app_theme.dart';
import 'features/hotel/data/local/models/favorite_hotel_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteHotelModelAdapter());
  await configureDependencies(
      environment: const String.fromEnvironment('environment',
          defaultValue: Environment.dev));

  FlutterError.onError = (details) {
    logger.e(details.exceptionAsString(), stackTrace: details.stack);
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = inject();

    return MaterialApp.router(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Hotel Booking',
      theme: AppTheme.themeData,
      routerDelegate: appRouter.delegate(
        deepLinkBuilder: (deepLink) {
          logger.i('DeepLink: $deepLink');
          return deepLink;
        },
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
