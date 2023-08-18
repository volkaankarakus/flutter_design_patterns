import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/memento/command/icommand.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/memento/mementos/imemento.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/memento/originator.dart';

class RandomisePropertiesCommand implements ICommand {
  final Originator originator;
  final IMemento _backup;

  RandomisePropertiesCommand(this.originator)
      : _backup = originator.createMemento();

  @override
  void execute() {
    final shape = originator.state;
    shape.color = Color.fromRGBO(
      random.integer(255),
      random.integer(255),
      random.integer(255),
      1.0,
    );
    shape.height = random.integer(150, min: 50).toDouble();
    shape.width = random.integer(150, min: 50).toDouble();
  }

  @override
  void undo() => originator.restore(_backup);
}
