import 'package:flutter/material.dart';
import 'package:hotel_booking/base/theme/app_styles.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/rating_widget.dart';
import 'package:hotel_booking/generated/l10n.dart';

class HotelCard extends StatelessWidget {
  final HotelEntity hotel;

  const HotelCard({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.network(
              hotel.images.first.large,
              width: double.infinity,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        hotel.name,
                        style: AppStyles.titleStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    RatingWidget(rate: hotel.ratingInfo.score.toInt()),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  hotel.destination,
                  style: AppStyles.bodyStyle,
                ),
                const SizedBox(height: 8),
                Divider(
                  height: 2,
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).hotelDaysNights(
                                  hotel.bestOffer.travelDate.days,
                                  hotel.bestOffer.travelDate.nights,
                                ),
                            style: AppStyles.subTextStyle,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            S.of(context).roomInfo(
                                  hotel.bestOffer.rooms.overall.name,
                                  hotel.bestOffer.rooms.overall.boarding,
                                ),
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[600]),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            S.of(context).guestsAndFlightInfo(
                                  hotel.bestOffer.rooms.overall.adultCount
                                      .toString(),
                                  hotel.bestOffer.rooms.overall.childrenCount
                                      .toString(),
                                  hotel.bestOffer.flightIncluded
                                      ? S.of(context).includedFlight
                                      : S.of(context).noFlight,
                                ),
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          S.of(context).fromPrice,
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                        Text(
                          '€ ${(hotel.bestOffer.total / 100).toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          S.of(context).pricePerPerson(
                                (hotel.bestOffer.simplePricePerPerson / 100)
                                    .toStringAsFixed(2),
                              ),
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {},
                    child: Text(
                      S.of(context).viewOffers,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
