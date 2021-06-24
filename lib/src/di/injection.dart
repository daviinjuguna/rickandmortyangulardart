import 'package:get_it/get_it.dart';
import 'package:rickandmortyangulardart/src/data/datasource/remote.dart';
import 'package:rickandmortyangulardart/src/data/service/character_service.dart';
import 'package:rickandmortyangulardart/src/domain/repo/repository.dart';
import 'package:rickandmortyangulardart/src/presentation/bloc/character_bloc.dart';

final getIt = GetIt.instance;

void initialize() {
  getIt
      .registerLazySingleton<CharacterService>(() => CharacterService.create());

  getIt.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(getIt.get<CharacterService>()));

  getIt.registerLazySingleton<Repository>(
    () => RepositoryImpl(getIt.get<RemoteDataSource>()),
  );

  getIt.registerFactory(
      () => CharacterBloc(repository: getIt.get<Repository>()));
}
