import 'package:logger/logger.dart';

class LoggerService {
  static final Logger _logger = Logger();

  static void logInfo(String message) {
    _logger.i(message);
  }

  static void logError(String message,
      [DateTime? time, dynamic error, StackTrace? stackTrace]) {
    _logger.e(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static void logDebug(String message) {
    _logger.d(message);
  }
}
