import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/base/index.dart';
import 'package:hotel_booking/di/injector.dart';
import 'package:hotel_booking/features/hotel/presentation/manager/hotel_bloc.dart';
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
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items:  [
              BottomNavigationBarItem(
                  icon: const Icon(Icons.home), label: S.of(context).tab_overview),
              BottomNavigationBarItem(icon: const Icon(Icons.hotel), label: S.of(context).tab_hotels),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite), label: S.of(context).tab_favorites),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person), label: S.of(context).tab_account),
            ],
          ),
        );
      },
    );
  }
}

@RoutePage()
class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example static data for now
    List<Map<String, dynamic>> hotels = [
      {
        "imageUrl": "https://via.placeholder.com/400x200",
        "title": "Hotel AluaVillage Blue Beach",
        "location": "Playa de Esquinzo, Fuerteventura, Spanien",
        "price": "1.279,00",
        "rating": 4.5,
        "isFavorite": false,
      },
      // Add more hotels here
    ];

    return Scaffold(
      appBar: AppBar(title:  Text(S.of(context).hotels_page_title)),
      body: BlocBuilder<HotelBloc, HotelState>(
        bloc: inject<HotelBloc>()..add(const FetchHotel()),
        builder: (context, state) {
          logger.i(state);
          return ListView.builder(
            itemBuilder: (context, index) {
          return HotelCard(
            imageUrl: hotels[0]["imageUrl"],
            title: hotels[0]["title"],
            location: hotels[0]["location"],
            price: hotels[0]["price"],
            rating: hotels[0]["rating"],
            isFavorite: hotels[0]["isFavorite"],
            onFavoriteToggle: () {},
          );
        },
          );
        },
      ),
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
      appBar: AppBar(title:  Text(S.of(context).favorite_page_title)),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          return HotelCard(
            imageUrl: favorites[index]["imageUrl"],
            title: favorites[index]["title"],
            location: favorites[index]["location"],
            price: favorites[index]["price"],
            rating: favorites[index]["rating"],
            isFavorite: favorites[index]["isFavorite"],
            onFavoriteToggle: () {
              // Handle unfavorite logic
            },
          );
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
      appBar: AppBar(title:  Text(S.of(context).overview_page_title)),
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
      appBar: AppBar(title:  Text(S.of(context).account_page_title)),
      body: const Center(
        child: Text('Account Details'),
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;
  final String price;
  final double rating;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const HotelCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(location),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ab $price €', style: const TextStyle(fontSize: 16)),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 20),
                    Text('$rating / 5.0'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text('Book Now'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: onFavoriteToggle,
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
