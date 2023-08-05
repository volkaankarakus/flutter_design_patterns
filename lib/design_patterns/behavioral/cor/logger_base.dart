import 'package:flutter/material.dart';
import 'log_level_enum.dart';

abstract class LoggerBase {
  final LoggerBase? _nextLogger;

  @protected // a class must be accessible by its subclasses, but not by other classes.
  final LogLevel logLevel;

  const LoggerBase({
    required this.logLevel,
    LoggerBase? nextLogger,
  }) : _nextLogger = nextLogger;

  // ** Log

  // ** Log Message
  void logMessage(LogLevel level, String message) {
    if (logLevel <= level) log(message);

    _nextLogger?.logMessage(level, message);
  }

  // ** Log Type
  void logDebug(String message) => logMessage(LogLevel.debug, message);
  void logInfo(String message) => logMessage(LogLevel.info, message);
  void logError(String message) => logMessage(LogLevel.error, message);

  void log(String message);
}
