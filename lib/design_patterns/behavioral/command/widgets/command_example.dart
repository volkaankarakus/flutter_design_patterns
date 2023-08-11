import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command_history.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command_shape.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/commands/change_color_command.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/commands/change_height_command.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/commands/change_width_command.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/widgets/command_history_column.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/widgets/shape_container.dart';
import 'package:flutter_design_patterns/platform/platform_button.dart';

class CommandExample extends StatefulWidget {
  const CommandExample({super.key});

  @override
  State<CommandExample> createState() => _CommandExampleState();
}

class _CommandExampleState extends State<CommandExample> {
  final _commandHistory = CommandHistory();
  final _shape = CommandShape.initial();

  // ** Change Color
  void _changeColor() {
    final command = ChangeColorCommand(_shape);
    _executeCommand(command);
  }

  // ** Change Height
  void _changeHeight() {
    final command = ChangeHeightCommand(_shape);
    _executeCommand(command);
  }

  // ** Change Width
  void _changeWidth() {
    final command = ChangeWidthCommand(_shape);
    _executeCommand(command);
  }

  // ** Execute Command
  void _executeCommand(Command command) => setState(() {
        command.execute();
        _commandHistory.add(command);
      });

  // ** Undo
  void _undo() => setState(() {
        _commandHistory.undo();
      });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(),
        child: Column(
          children: <Widget>[
            ShapeContainer(
              shape: _shape,
            ),
            PlatformButton(
              materialColor: Colors.black,
              materialTextColor: Colors.white,
              onPressed: _changeColor,
              text: 'Change color',
            ),
            PlatformButton(
              materialColor: Colors.black,
              materialTextColor: Colors.white,
              onPressed: _changeHeight,
              text: 'Change height',
            ),
            PlatformButton(
              materialColor: Colors.black,
              materialTextColor: Colors.white,
              onPressed: _changeWidth,
              text: 'Change width',
            ),
            const Divider(),
            PlatformButton(
              materialColor: Colors.black,
              materialTextColor: Colors.white,
              onPressed: _commandHistory.isEmpty ? null : _undo,
              text: 'Undo',
            ),
            Row(
              children: <Widget>[
                CommandHistoryColumn(
                  commandList: _commandHistory.commandHistoryList,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
