// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_cache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModelCacheAdapter extends TypeAdapter<Model_Cache> {
  @override
  final int typeId = 10;

  @override
  Model_Cache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Model_Cache(
      fields[0] as dynamic,
      fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Model_Cache obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
