import 'package:flutter_design_patterns/design_patterns/behavioral/memento/command/shape_command.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/memento/mementos/imemento.dart';

class Memento implements IMemento {
  final ShapeCommand _state;

  Memento(ShapeCommand shape) : _state = ShapeCommand.copy(shape);

  @override
  ShapeCommand getState() => _state;
}
