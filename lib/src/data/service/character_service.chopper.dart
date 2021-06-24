// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$CharacterService extends CharacterService {
  _$CharacterService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CharacterService;

  @override
  Future<Response<dynamic>> getAllCharacters() {
    final $url = '/character';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCharacter(int id) {
    final $url = '/character/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
