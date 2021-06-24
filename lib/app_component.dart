import 'package:angular/angular.dart';

import 'src/presentation/components/rick_and_morty_component.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [RickAndMortyComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
