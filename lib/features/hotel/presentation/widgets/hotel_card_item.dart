// ignore_for_file: unused_element

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/base/theme/app_styles.dart';
import 'package:hotel_booking/features/hotel/domain/entities/hotel_entity.dart';
import 'package:hotel_booking/features/hotel/presentation/widgets/rating_widget.dart';
import 'package:hotel_booking/generated/l10n.dart';

class HotelCardItem extends StatelessWidget {
  final HotelEntity hotel;
  final bool showDetails;
  final Function(String hotelId)? onFavoriteClick;
  final Function(String hotelId)? onActionButtonClick;

  const HotelCardItem({
    super.key,
    required this.hotel,
    this.onFavoriteClick,
    this.onActionButtonClick,
    this.showDetails = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _HotelImageSection(
            hotel: hotel,
            onFavoriteClick: onFavoriteClick,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _HotelTitleAndRating(hotel: hotel),
                const SizedBox(height: 4),
                _HotelDestination(hotel: hotel),
                const SizedBox(height: 8),
                const Divider(height: 2),
                const SizedBox(height: 8),
                if (showDetails) ...[
                  _HotelDetails(hotel: hotel),
                  const SizedBox(height: 16),
                ],
                _HotelViewOffersButton(
                  hotelId: hotel.hotelId,
                  actionButtonText: showDetails
                      ? S.of(context).viewOffers
                      : S.of(context).viewHotel,
                  onActionButtonClick: onActionButtonClick,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HotelImageSection extends StatelessWidget {
  final HotelEntity hotel;
  final Function(String hotelId)? onFavoriteClick;

  const _HotelImageSection({
    super.key,
    required this.hotel,
    this.onFavoriteClick,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: CachedNetworkImage(
            imageUrl: hotel.imageUrl,
            placeholder: (context, url) => const SizedBox(
                height: 30,
                width: 30,
                child: Center(child: CircularProgressIndicator())),
            errorWidget: (context, url, error) => const Icon(Icons.error),
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
    );
  }
}

class _HotelTitleAndRating extends StatelessWidget {
  final HotelEntity hotel;

  const _HotelTitleAndRating({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class _HotelDestination extends StatelessWidget {
  final HotelEntity hotel;

  const _HotelDestination({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Text(
      hotel.destination,
      style: AppStyles.bodyStyle,
    );
  }
}

class _HotelDetails extends StatelessWidget {
  final HotelEntity hotel;

  const _HotelDetails({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).hotelDaysNights(hotel.days, hotel.nights),
                style: AppStyles.subTextStyle,
              ),
              const SizedBox(height: 4),
              Text(
                S.of(context).roomInfo(hotel.roomName, hotel.boarding),
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
    );
  }
}

class _HotelViewOffersButton extends StatelessWidget {
  final String hotelId;
  final String actionButtonText;
  final Function(String hotelId)? onActionButtonClick;

  const _HotelViewOffersButton({
    super.key,
    required this.hotelId,
    required this.actionButtonText,
    this.onActionButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          onActionButtonClick?.call(hotelId);
        },
        child: Text(
          actionButtonText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
