import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/log_bloc.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/log_level_enum.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/log_message.dart';

class ExternalLoggingService {
  final LogBloc logBloc;
  const ExternalLoggingService(this.logBloc);

  void logMessage(LogLevel logLevel, String message) {
    final logMessage = LogMessage(logLevel: logLevel, message: message);

    // send log message to external service

    // log message
    logBloc.log(logMessage);
  }
}
