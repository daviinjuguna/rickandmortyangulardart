import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rickandmortyangulardart/src/domain/entities/character.dart';
import 'package:rickandmortyangulardart/src/domain/repo/repository.dart';

import 'package:rxdart/rxdart.dart';
import 'package:collection/collection.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc({@required this.repository}) : super(CharacterInitial());
  final Repository repository;

  @override
  Stream<CharacterState> mapEventToState(
    CharacterEvent event,
  ) async* {
    if (event is GetAllCharacter) {
      yield CharacterLoading();
      try {
        final _res = await repository.getCharacter();
        yield CharacterSuccess(_res);
      } catch (e) {
        yield CharacterError(e.toString());
      }
    }
  }

  @override
  Stream<Transition<CharacterEvent, CharacterState>> transformEvents(
      Stream<CharacterEvent> events,
      TransitionFunction<CharacterEvent, CharacterState> transitionFn) {
    return events
        .debounceTime(const Duration(milliseconds: 300))
        .switchMap(transitionFn);
  }
}
