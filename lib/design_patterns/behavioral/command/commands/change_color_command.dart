import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command_shape.dart';

class ChangeColorCommand implements Command {
  final Color previousColor;
  CommandShape shape;
  ChangeColorCommand(this.shape) : previousColor = shape.color;

  @override
  void execute() => shape.color = Color.fromRGBO(
        random.integer(255),
        random.integer(255),
        random.integer(255),
        1.0,
      );

  @override
  String getTitle() => 'Change color';

  @override
  void undo() => shape.color = previousColor;
}
