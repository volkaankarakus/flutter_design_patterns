import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/cor/log_level_enum.dart';

class LogMessage {
  final LogLevel logLevel;
  final String message;
  const LogMessage({
    required this.logLevel,
    required this.message,
  });

  // ** Log Level String
  String get _logLevelString =>
      logLevel.toString().split('.').last.toUpperCase();

  // ** Log Level Color
  Color _getLogEntryColor() => switch (logLevel) {
        LogLevel.debug => Colors.grey,
        LogLevel.info => Colors.blue,
        LogLevel.error => Colors.red,
      };

  // ** Get Formatted Message Widget
  Widget getFormattedMessage() => Text(
        '$_logLevelString : $message',
        style: TextStyle(color: _getLogEntryColor()),
        textAlign: TextAlign.justify,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      );
}
