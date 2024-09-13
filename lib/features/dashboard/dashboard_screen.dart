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
        FavoritesRoute(),
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
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> favorites = [
      {
        "imageUrl": "https://via.placeholder.com/400x200",
        "title": "Hotel AluaVillage Blue Beach",
        "location": "Playa de Esquinzo, Fuerteventura, Spanien",
        "price": "1.279,00",
        "rating": 4.5,
        "isFavorite": true,
      },
      // Add more favorited hotels here
    ];

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).favorite_page_title)),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          return const Text('Favorite Hotel Card');
        },
      ),
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
