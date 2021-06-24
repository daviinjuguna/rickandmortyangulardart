import 'package:meta/meta.dart';

import 'origin.dart';

class Character {
  final int id;
  final String name, status, species, gender, image;
  final Origin origin, location;

  Character({
    @required this.id,
    @required this.name,
    @required this.status,
    @required this.species,
    @required this.gender,
    @required this.image,
    @required this.origin,
    @required this.location,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Character &&
        other.id == id &&
        other.image == image &&
        other.location == location;
  }

  @override
  int get hashCode => id.hashCode ^ image.hashCode ^ location.hashCode;
}
