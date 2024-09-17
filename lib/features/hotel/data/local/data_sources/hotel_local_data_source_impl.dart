import 'package:hive/hive.dart';
import 'package:hotel_booking/features/hotel/data/local/models/favorite_hotel_model.dart';
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HotelLocalDataSource)
class HotelLocalDataSourceImpl implements HotelLocalDataSource {
  final Box<FavoriteHotelModel> _favoritesBox;

  HotelLocalDataSourceImpl(this._favoritesBox);

  @override
  Future<void> addFavoriteHotel(FavoriteHotelModel hotel) async {
    await _favoritesBox.put(hotel.hotelId, hotel);
  }

  @override
  Future<void> removeFavoriteHotel(String hotelId) async {
    await _favoritesBox.delete(hotelId);
  }

  @override
  Future<List<FavoriteHotelModel>> getFavoriteHotels() async {
    return _favoritesBox.values.toList();
  }

  @override
  Future<bool> isFavorite(String hotelId) async {
    return _favoritesBox.containsKey(hotelId);
  }

  @override
  Future<bool> close() async {
    if (_favoritesBox.isOpen) {
      await _favoritesBox.close();
      return true;
    }
    return false;
  }

  bool isFavoritesBoxOpen() => _favoritesBox.isOpen;
}