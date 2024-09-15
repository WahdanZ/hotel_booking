import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/common/widget/tab_observer_mixin.dart';
import 'package:hotel_booking/di/injector.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/presentation/bloc/hotel/hotel_bloc.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/hotel_card_item.dart';
import 'package:hotel_booking/generated/l10n.dart';

@RoutePage()
class HotelsScreen extends StatelessWidget {
  static const String routeName = 'hotels-screen';
  const HotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<HotelBloc>(),
      child: const HotelsScreenContent(),
    );
  }
}

class HotelsScreenContent extends StatefulWidget {
  const HotelsScreenContent({super.key});

  @override
  State<HotelsScreenContent> createState() => _HotelsScreenContentState();
}

class _HotelsScreenContentState extends State<HotelsScreenContent>
    with AutoRouteAware, TabObserverMixin {
  late final HotelBloc _hotelBloc;

  @override
  void initState() {
    super.initState();
    _hotelBloc = context.read();
  }

  @override
  void dispose() {
    _hotelBloc.close();
    super.dispose();
  }

  @override
  onTabActive() {
    super.onTabActive();
    _hotelBloc.add(const FetchHotel(showLoading: false));
  }

  Future<void> _onRefresh() async {
    _hotelBloc.add(const FetchHotel());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).hotels_page_title),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: BlocBuilder<HotelBloc, HotelState>(
          bloc: _hotelBloc..add(const FetchHotel()),
          builder: (context, state) {
            return state.when(
              initial: () => const _HotelsLoading(),
              loading: () => const _HotelsLoading(),
              loaded: (hotels) => _HotelsList(hotels: hotels),
              error: (message) => _HotelsError(message: message),
            );
          },
        ),
      ),
    );
  }
}

class _HotelsLoading extends StatelessWidget {
  const _HotelsLoading();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - kToolbarHeight,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class _HotelsList extends StatelessWidget {
  final List<HotelEntity> hotels;

  const _HotelsList({required this.hotels});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return HotelCardItem(
            hotel: hotel,
            onFavoriteClick: (hotelId) {
              if (hotel.isFavorite) {
                context
                    .read<HotelBloc>()
                    .add(RemoveFavoriteHotel(hotelId: hotelId));
              } else {
                context.read<HotelBloc>().add(AddFavoriteHotel(hotel: hotel));
              }
            },
          );
        },
      ),
    );
  }
}

class _HotelsError extends StatelessWidget {
  final String message;

  const _HotelsError({required this.message});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - kToolbarHeight,
        child: Center(
          child: Text(
            message,
            style: const TextStyle(fontSize: 18, color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
