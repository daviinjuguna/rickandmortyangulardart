part of 'character_bloc.dart';

@immutable
abstract class CharacterState {}

class CharacterInitial extends CharacterState {}

class CharacterLoading extends CharacterState {}

class CharacterError extends CharacterState {
  final String error;

  CharacterError(this.error);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharacterError && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;

  @override
  String toString() => 'CharacterError(error: $error)';
}

class CharacterSuccess extends CharacterState {
  final List<Character> characters;

  CharacterSuccess(this.characters);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is CharacterSuccess &&
        listEquals(other.characters, characters);
  }

  @override
  int get hashCode => characters.hashCode;

  @override
  String toString() => 'CharacterSuccess(characters: $characters)';
}
