import 'dart:collection';

import 'package:flutter_design_patterns/design_patterns/behavioral/command/command.dart';

class CommandHistory {
  final _commandList = ListQueue<Command>();

  bool get isEmpty => _commandList.isEmpty;

  List<String> get commandHistoryList =>
      _commandList.map((element) => element.getTitle()).toList();

  void add(Command command) => _commandList.add(command);

  void undo() {
    if (_commandList.isEmpty) return;
    _commandList.removeLast().undo();
  }
}
