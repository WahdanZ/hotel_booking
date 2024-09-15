import 'package:auto_route/auto_route.dart';
import 'package:hotel_booking/features/hotel/presentation/pages/favorite_hotel_screen.dart';
import 'package:hotel_booking/features/hotel/presentation/pages/hotel_screen.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@LazySingleton()
@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/dashboard',
          page: MainShellRoute.page,
          initial: true,
          children: [
            AutoRoute(
                path: 'overview', page: OverviewRoute.page, initial: true),
            AutoRoute(
                path: HotelsScreen.routeName,
                page: HotelsRoute.page,
            ),
            AutoRoute(
                path: FavoriteHotelScreen.routeName,
                page: FavoriteHotelRoute.page,
            ),
            AutoRoute(path: 'account', page: AccountRoute.page),
          ],
        ),
      ];
}
