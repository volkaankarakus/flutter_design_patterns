import 'dart:collection';

import 'package:flutter_design_patterns/design_patterns/behavioral/memento/command/icommand.dart';

class CommandHistory {
  final _commandList = ListQueue<ICommand>();

  bool get isEmpty => _commandList.isEmpty;

  void add(ICommand command) => _commandList.add(command);

  void undo() {
    if (_commandList.isEmpty) return;
    _commandList.removeLast().undo();
  }
}
