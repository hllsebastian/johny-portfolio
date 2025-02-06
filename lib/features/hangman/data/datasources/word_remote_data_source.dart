import 'dart:convert';

import 'package:johny_portfolio/core/error/exceptions.dart';
import 'package:johny_portfolio/core/network/http_client.dart';

abstract class WordRemoteDataSource {
  Future<String> fetchRandomWord();
}

class WordRemoteDataSourceImpl implements WordRemoteDataSource {
  WordRemoteDataSourceImpl(this.client);
  final HttpClient client;

  @override
  Future<String> fetchRandomWord() async {
    final uri =
        Uri.parse('https://random-word-api.herokuapp.com/word?number=1');
    final response = await client.get(uri);
    try {
      final List<dynamic> data = jsonDecode(response.body);
      return data.first as String;
    } catch (e) {
      throw ServerException('Invalid response from API');
    }
  }
}
