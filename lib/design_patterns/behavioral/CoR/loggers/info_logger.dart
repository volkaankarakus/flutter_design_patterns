import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/log_level_enum.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/logger_base.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/service/external_logging_service.dart';

class InfoLogger extends LoggerBase {
  final ExternalLoggingService externalLoggingService;
  InfoLogger(
    LogBloc, {
    super.nextLogger,
  })  : externalLoggingService = ExternalLoggingService(LogBloc()),
        super(logLevel: LogLevel.info);

  @override
  void log(String message) {
    externalLoggingService.logMessage(logLevel, message);
  }
}
