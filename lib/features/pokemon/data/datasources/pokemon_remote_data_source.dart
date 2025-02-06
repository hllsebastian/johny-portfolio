import 'dart:convert';
import 'dart:math';

import 'package:johny_portfolio/core/network/http_client.dart';

abstract class PokemonRemoteDataSource {
  Future<Map<String, String>> fetchRandomPokemon();
}

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final HttpClient client;

  PokemonRemoteDataSourceImpl(this.client);

  @override
  Future<Map<String, String>> fetchRandomPokemon() async {
    final randomId = Random().nextInt(1010) + 1;
    final uri = Uri.parse('https://pokeapi.co/api/v2/pokemon/$randomId/');
    final response = await client.get(uri);
    final data = jsonDecode(response.body);
    return {
      'name': data['name'],
      'image': data['sprites']['front_default'],
    };
  }
}
