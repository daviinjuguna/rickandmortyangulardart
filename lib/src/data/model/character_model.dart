import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:rickandmortyangulardart/src/domain/entities/character.dart';

import 'origin_model.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel extends Character {
  @override
  final int id;
  @override
  @override
  @override
  @override
  @override
  final String name, status, species, gender, image;
  @override
  @override
  final OriginModel origin, location;

  CharacterModel({
    @required this.id,
    @required this.name,
    @required this.status,
    @required this.species,
    @required this.gender,
    @required this.image,
    @required this.origin,
    @required this.location,
  }) : super(
            id: id,
            name: name,
            status: status,
            species: species,
            gender: gender,
            image: image,
            origin: origin,
            location: location);

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharacterModel &&
        other.id == id &&
        other.image == image &&
        other.location == location;
  }

  @override
  int get hashCode => id.hashCode ^ image.hashCode ^ location.hashCode;
}
