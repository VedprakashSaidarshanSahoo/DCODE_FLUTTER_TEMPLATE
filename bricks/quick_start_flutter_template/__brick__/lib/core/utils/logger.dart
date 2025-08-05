// lib/utils/logger.dart

import 'package:logger/logger.dart';

// App logger is something that is used to log messages, errors, warnings, etc.

// AppLogger.debug("Debug log here");
// AppLogger.info("Info message logged");

// App logger is act on debug mode

// import 'package:flutter/foundation.dart';

// if (kDebugMode) {
//   AppLogger.debug("Only logs in debug mode");
// }

class AppLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 5,
      lineLength: 100,
      colors: true,
      printEmojis: true,
    ),
  );

  static void debug(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  static void info(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  static void warning(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  static void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  static void verbose(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    // ignore: deprecated_member_use
    _logger.v(message, error: error, stackTrace: stackTrace);
  }

  static void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    // ignore: deprecated_member_use
    _logger.wtf(message, error: error, stackTrace: stackTrace);
  }
}
