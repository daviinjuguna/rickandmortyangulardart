import 'package:rickandmortyangulardart/src/data/model/character_model.dart';
import 'package:rickandmortyangulardart/src/data/service/character_service.dart';

abstract class RemoteDataSource {
  Future<List<CharacterModel>> getAllCharacters();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final CharacterService service;

  RemoteDataSourceImpl(this.service);
  @override
  Future<List<CharacterModel>> getAllCharacters() async {
    try {
      final response = await service.getAllCharacters();
      if (response.statusCode == 200) {
        return (response.body['results'] as List)
            .map((e) => CharacterModel.fromJson(e))
            .toList();
      }
      throw Exception('Something Went Wrong');
    } catch (e) {
      print(e);
      throw Exception(e.toString());
    }
  }
}
