import 'package:chopper/chopper.dart';

part 'character_service.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class CharacterService extends ChopperService {
  static CharacterService create() {
    final client = ChopperClient(
        baseUrl: 'https://rickandmortyapi.com/api',
        services: [_$CharacterService()],
        converter: JsonConverter(),
        errorConverter: JsonConverter(),
        interceptors: [
          HeadersInterceptor({'Accept': 'application/json'}),
          HttpLoggingInterceptor(),
        ]);
    return _$CharacterService(client);
  }

  @Get(path: 'character')
  Future<Response> getAllCharacters();

  @Get(path: 'character/{id}')
  Future<Response> getCharacter(
    @Path('id') int id,
  );
}
