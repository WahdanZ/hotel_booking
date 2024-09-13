import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking/di/injector.dart';
import 'package:hotel_booking/features/hotel/presentation/manager/hotel_bloc.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/hotel_card_item.dart';
import 'package:hotel_booking/generated/l10n.dart';

@RoutePage()
class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).hotels_page_title),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          inject<HotelBloc>().add(const FetchHotel());
        },
        child: BlocBuilder<HotelBloc, HotelState>(
          bloc: inject<HotelBloc>()..add(const FetchHotel()),
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (hotels) {
                // pull to refresh

                return ListView.builder(
                  itemCount: hotels.length,
                  itemBuilder: (context, index) {
                    final hotel = hotels[index];
                    return HotelCard(
                      hotel: hotel,
                    );
                  },
                );
              },
              error: (message) => Center(child: Text(message)),
            );
          },
        ),
      ),
    );
  }
}
