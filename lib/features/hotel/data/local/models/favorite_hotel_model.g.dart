// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_hotel_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteHotelModelAdapter extends TypeAdapter<FavoriteHotelModel> {
  @override
  final int typeId = 0;

  @override
  FavoriteHotelModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteHotelModel(
      hotelId: fields[1] as String,
      name: fields[2] as String,
      destination: fields[3] as String,
      imageUrl: fields[4] as String,
      ratingScore: fields[5] as double,
      isFavorite: fields[6] as bool,
      days: fields[7] as int,
      nights: fields[8] as int,
      roomName: fields[9] as String,
      boarding: fields[10] as String,
      adultCount: fields[11] as int,
      childrenCount: fields[12] as int,
      flightIncluded: fields[13] as bool,
      totalPrice: fields[14] as int,
      pricePerPerson: fields[15] as int,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteHotelModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(1)
      ..write(obj.hotelId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.destination)
      ..writeByte(4)
      ..write(obj.imageUrl)
      ..writeByte(5)
      ..write(obj.ratingScore)
      ..writeByte(6)
      ..write(obj.isFavorite)
      ..writeByte(7)
      ..write(obj.days)
      ..writeByte(8)
      ..write(obj.nights)
      ..writeByte(9)
      ..write(obj.roomName)
      ..writeByte(10)
      ..write(obj.boarding)
      ..writeByte(11)
      ..write(obj.adultCount)
      ..writeByte(12)
      ..write(obj.childrenCount)
      ..writeByte(13)
      ..write(obj.flightIncluded)
      ..writeByte(14)
      ..write(obj.totalPrice)
      ..writeByte(15)
      ..write(obj.pricePerPerson);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteHotelModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
