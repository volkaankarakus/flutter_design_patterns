// import 'package:flutter_design_patterns/design_patterns/behavioral/cor/log_bloc.dart';
// import 'package:flutter_design_patterns/design_patterns/behavioral/cor/log_level_enum.dart';
// import 'package:flutter_design_patterns/design_patterns/behavioral/cor/log_message.dart';
// import 'package:flutter_design_patterns/design_patterns/behavioral/cor/logger_base.dart';

// class DebugLogger extends LoggerBase {
//   const DebugLogger(
//     this.logBloc, {
//     super.nextLogger,
//   }) : super(logLevel: LogLevel.debug);

//   final LogBloc logBloc;

//   @override
//   void log(String message) {
//     final logMessage = LogMessage(logLevel: logLevel, message: message);

//     logBloc.log(logMessage);
//   }
// }
