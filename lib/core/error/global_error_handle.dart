import 'dart:async';
import 'package:flutter/widgets.dart';
import '../logging/logger_service.dart';

class GlobalErrorHandler {
  static void initialize() {
    FlutterError.onError = (details) {
      LoggerService.logError(
        'FlutterError: ${details.exceptionAsString()}',
        DateTime.now(),
        details.exception,
        details.stack,
      );
    };

    runZonedGuarded(
      () {
        WidgetsFlutterBinding.ensureInitialized();
      },
      (error, stackTrace) {
        LoggerService.logError(
          'Uncaught Error',
          DateTime.now(),
          error,
          stackTrace,
        );
      },
    );
  }
}
