import 'package:flutter_design_patterns/design_patterns/behavioral/memento/command/shape_command.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/memento/mementos/imemento.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/memento/mementos/memento.dart';

class Originator {
  ShapeCommand state;
  Originator() : state = ShapeCommand.initial();

  IMemento createMemento() => Memento(state);

  void restore(IMemento memento) => state = memento.getState();
}
