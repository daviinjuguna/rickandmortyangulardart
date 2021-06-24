import 'package:angular/angular.dart';
import 'package:angular_bloc/angular_bloc.dart';
import 'package:rickandmortyangulardart/app_component.template.dart' as ng;
import 'package:rickandmortyangulardart/src/utils/bloc_observer.dart';
import 'package:logging/logging.dart';

import 'package:rickandmortyangulardart/src/di/injection.dart' as di;

//
void main() {
  Bloc.observer = SimpleBlocObserver();
  di.initialize();
  _setUpLogging();
  runApp(
    ng.AppComponentNgFactory,
  );
}

void _setUpLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    print('${event.level.name}:${event.time}:${event.message}');
  });
}
