import 'package:flutter/material.dart';
import 'package:hotel_booking/base/theme/app_styles.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/rating_widget.dart';
import 'package:hotel_booking/generated/l10n.dart';

class HotelCard extends StatelessWidget {
  final HotelEntity hotel;
  final Function(String hotelId)? onFavoriteClick;
  final Function(String hotelId)? onViewOffersClick;

  const HotelCard({
    super.key,
    required this.hotel,
    this.onFavoriteClick,
    this.onViewOffersClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // ... (Card styling)
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image and Favorite Button
          Stack(
            children: [
              // Hotel Image
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.network(
                  hotel.imageUrl,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(
                    hotel.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    onFavoriteClick?.call(hotel.hotelId);
                  },
                ),
              ),
            ],
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
                    RatingWidget(rate: hotel.ratingScore.toInt()),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  hotel.destination,
                  style: AppStyles.bodyStyle,
                ),
                const SizedBox(height: 8),
                const Divider(height: 2),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Travel Dates
                          Text(
                            S.of(context).hotelDaysNights(
                                  hotel.days,
                                  hotel.nights,
                                ),
                            style: AppStyles.subTextStyle,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            S.of(context).roomInfo(
                                  hotel.roomName,
                                  hotel.boarding,
                                ),
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            S.of(context).guestsAndFlightInfo(
                                  hotel.adultCount.toString(),
                                  hotel.childrenCount.toString(),
                                  hotel.flightIncluded
                                      ? S.of(context).includedFlight
                                      : S.of(context).noFlight,
                                ),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '€ ${(hotel.totalPrice / 100).toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          S.of(context).pricePerPerson(
                                (hotel.pricePerPerson / 100).toStringAsFixed(2),
                              ),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
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
                    onPressed: () {
                      onViewOffersClick?.call(hotel.hotelId);
                    },
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
