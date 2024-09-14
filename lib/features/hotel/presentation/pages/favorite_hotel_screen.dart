import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/di/injector.dart';
import 'package:hotel_booking/features/hotel/presentation/bloc/favorite/favorite_hotel_bloc.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/hotel_card_item.dart';
import 'package:hotel_booking/generated/l10n.dart';

@RoutePage()
class FavoriteHotelScreen extends StatelessWidget {
  static const String routeName = 'favorite-hotel-screen';

  const FavoriteHotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<FavoriteHotelBloc>(),
      child: const FavoriteHotelScreenContent(),
    );
  }
}

class FavoriteHotelScreenContent extends StatefulWidget {
  const FavoriteHotelScreenContent({super.key});

  @override
  State<FavoriteHotelScreenContent> createState() =>
      _FavoriteHotelScreenContentState();
}

class _FavoriteHotelScreenContentState
    extends State<FavoriteHotelScreenContent> {
  late final FavoriteHotelBloc _favoriteHotelBloc;

  @override
  void initState() {
    super.initState();
    _favoriteHotelBloc = context.read();
    _favoriteHotelBloc.add(const FetchFavoriteHotel());
  }


  @override
  void dispose() {
    _favoriteHotelBloc.close();

    super.dispose();
  }

  Future<void> _onRefresh() async {
    _favoriteHotelBloc.add(const FetchFavoriteHotel());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).favorite_page_title)),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: BlocBuilder<FavoriteHotelBloc, FavoriteHotelState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded: (data) {
                if (data.isEmpty) {
                  return const Center(child: Text('No favorite hotels'));
                }
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final hotel = data[index];
                    return HotelCardItem(
                      hotel: hotel,
                      showDetails: false,
                      onFavoriteClick: (hotelId) {
                        _favoriteHotelBloc
                            .add(RemoveFavoriteHotel(hotelId: hotel.hotelId));
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => false;
}
