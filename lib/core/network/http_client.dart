import 'package:http/http.dart' as http;
import 'package:johny_portfolio/core/logging/logger_service.dart';

class HttpClient {
  final http.Client client;

  HttpClient(this.client);

  Future<http.Response> get(Uri uri) async {
    LoggerService.logInfo('Get request to: $uri');
    final stopwatch = Stopwatch()..start();
    try {
      final response = await client.get(uri);
      stopwatch.stop();
      LoggerService.logInfo(
          'Response: ${response.statusCode} in ${stopwatch.elapsedMilliseconds}ms');
      LoggerService.logInfo(
          'Response: ${response.statusCode} for GET ${uri.toString()} in ${stopwatch.elapsedMilliseconds}ms');
      _logResponseBody(response);
      _validateResponse(response);
      return response;
    } catch (e, stackTrace) {
      stopwatch.stop();
      LoggerService.logError(
        'Error: $e for GET ${uri.toString()} in ${stopwatch.elapsedMilliseconds}ms',
        DateTime.now(),
        e,
        stackTrace,
      );
      LoggerService.logError(
          'Error in GET ${uri.toString()} after ${stopwatch.elapsedMilliseconds}ms',
          DateTime.now(),
          e,
          stackTrace);
      rethrow;
    }
  }
}

void _validateResponse(http.Response response) {
  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw HttpException(
        'HTTP Error: ${response.statusCode} - ${response.body}');
  }
}

void _logResponseBody(http.Response response) {
  final truncatedBody = response.body.length > 100
      ? '${response.body.substring(0, 100)}...'
      : response.body;
  LoggerService.logDebug('Response Body: $truncatedBody');
}

class HttpException implements Exception {
  final String message;
  HttpException(this.message);
}
