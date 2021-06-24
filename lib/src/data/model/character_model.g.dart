// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return CharacterModel(
    id: json['id'] as int,
    name: json['name'] as String,
    status: json['status'] as String,
    species: json['species'] as String,
    gender: json['gender'] as String,
    image: json['image'] as String,
    origin: json['origin'] == null
        ? null
        : OriginModel.fromJson(json['origin'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : OriginModel.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
      'origin': instance.origin,
      'location': instance.location,
    };
