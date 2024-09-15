import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/generated/l10n.dart';
import 'package:hotel_booking/route/app_router.gr.dart';

@RoutePage()
class MainShellPage extends StatelessWidget {
  const MainShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        OverviewRoute(),
        HotelsRoute(),
        FavoriteHotelRoute(),
        AccountRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: S.of(context).tab_overview),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.hotel),
                  label: S.of(context).tab_hotels),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite),
                  label: S.of(context).tab_favorites),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: S.of(context).tab_account),
            ],
          ),
        );
      },
    );
  }
}





@RoutePage()
class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).overview_page_title)),
      body: const Center(
        child: Text('Overview of Hotels and Services'),
      ),
    );
  }
}

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).account_page_title)),
      body: const Center(
        child: Text('Account Details'),
      ),
    );
  }
}
