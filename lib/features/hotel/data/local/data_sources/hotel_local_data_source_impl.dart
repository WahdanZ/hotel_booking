import 'package:hive/hive.dart';
import 'package:hotel_booking/features/hotel/data/local/models/favorite_hotel_model.dart';
import 'package:hotel_booking/features/hotel/data/repositories/data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HotelLocalDataSource)
class HotelLocalDataSourceImpl implements HotelLocalDataSource {
  static const String FAVORITES_BOX = 'favorites_box';
  Box<FavoriteHotelModel>? _favoritesBox;

  Future<Box<FavoriteHotelModel>> get _box async {
    if (_favoritesBox == null || !_favoritesBox!.isOpen) {
      _favoritesBox = await Hive.openBox<FavoriteHotelModel>(FAVORITES_BOX);
    }
    return _favoritesBox!;
  }

  @override
  Future<void> addFavoriteHotel(FavoriteHotelModel hotel) async {
    final box = await _box;
    await box.put(hotel.hotelId, hotel);
  }

  @override
  Future<void> removeFavoriteHotel(String hotelId) async {
    final box = await _box;
    await box.delete(hotelId);
  }

  @override
  Future<List<FavoriteHotelModel>> getFavoriteHotels() async {
    final box = await _box;
    return box.values.toList();
  }

  @override
  Future<bool> isFavorite(String hotelId) async {
    final box = await _box;
    return box.containsKey(hotelId);
  }
}