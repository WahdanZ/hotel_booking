import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'favorite_hotel_model.freezed.dart';
part 'favorite_hotel_model.g.dart';

@HiveType(typeId: 0)
@freezed
class FavoriteHotelModel with _$FavoriteHotelModel {
  @HiveField(0)
  const factory FavoriteHotelModel({
    @HiveField(1) required String hotelId,
    @HiveField(2) required String name,
    @HiveField(3) required String destination,
    @HiveField(4) required String imageUrl,
    @HiveField(5) required double ratingScore,
    @HiveField(6) required bool isFavorite,
    @HiveField(7) required int days,
    @HiveField(8) required int nights,
    @HiveField(9) required String roomName,
    @HiveField(10) required String boarding,
    @HiveField(11) required int adultCount,
    @HiveField(12) required int childrenCount,
    @HiveField(13) required bool flightIncluded,
    @HiveField(14) required int totalPrice,
    @HiveField(15) required int pricePerPerson,
  }) = _FavoriteHotelModel;
}
