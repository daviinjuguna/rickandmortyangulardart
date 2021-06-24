import 'package:angular/angular.dart';
import 'package:angular/core.dart';
import 'package:angular_bloc/angular_bloc.dart';
import 'package:angular_components/angular_components.dart';
import 'package:rickandmortyangulardart/src/di/injection.dart';
import 'package:rickandmortyangulardart/src/domain/entities/character.dart';
import 'package:rickandmortyangulardart/src/presentation/bloc/character_bloc.dart';

@Component(
  selector: 'rick-and-morty',
  templateUrl: 'rick_and_morty_component.html',
  styleUrls: ['rick_and_morty_component.css'],
  pipes: [
    BlocPipe,
  ],
  directives: [
    NgFor,
    NgIf,
    MaterialListComponent,
    MaterialListItemComponent,
    coreDirectives
  ],
)
class RickAndMortyComponent implements OnInit, OnDestroy {
  CharacterBloc bloc = getIt.get<CharacterBloc>();
  Character character;

  void onSelect(Character char) {
    character = char;
    print(char.name);
  }

  @override
  void ngOnDestroy() {
    bloc.close();
  }

  @override
  void ngOnInit() {
    print('BUDDAHH');
    bloc.add(GetAllCharacter());
  }

  bool get isEmpty => bloc.state is CharacterInitial;
  bool get isLoading => bloc.state is CharacterLoading;
  bool get isSuccess => bloc.state is CharacterSuccess;
  bool get isError => bloc.state is CharacterError;

  List<Character> get characters =>
      isSuccess ? (bloc.state as CharacterSuccess).characters : [];
}
