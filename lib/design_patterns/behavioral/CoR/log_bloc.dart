import 'dart:async';
import 'dart:collection';

import 'package:flutter_design_patterns/design_patterns/behavioral/CoR/log_message.dart';

class LogBloc {
  final List<LogMessage> _logs = [];

  final _logStream = StreamController<List<LogMessage>>();

  StreamSink<List<LogMessage>> get _inLogStream => _logStream.sink;
  Stream<List<LogMessage>> get outLogStream => _logStream.stream;

  void log(LogMessage logMessage) {
    _logs.add(logMessage);
    _inLogStream.add(UnmodifiableListView(_logs));
  }

  void dispose() {
    _logStream.close();
  }
}
