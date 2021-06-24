import 'package:rickandmortyangulardart/src/data/datasource/remote.dart';
import 'package:rickandmortyangulardart/src/domain/entities/character.dart';

abstract class Repository {
  Future<List<Character>> getCharacter();
}

class RepositoryImpl implements Repository {
  final RemoteDataSource service;
  const RepositoryImpl(this.service);

  @override
  Future<List<Character>> getCharacter() async {
    final _res = await service.getAllCharacters();
    return _res;
  }
}
