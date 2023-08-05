import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/log_bloc.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/log_level_enum.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/log_message.dart';

class MailService {
  final LogBloc logBloc;
  const MailService(this.logBloc);

  void sendErrorMail(LogLevel logLevel, String message) {
    final logMessage = LogMessage(logLevel: logLevel, message: message);

    // Send error mail

    // Log message
    logBloc.log(logMessage);
  }
}
