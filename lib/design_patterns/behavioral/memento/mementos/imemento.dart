import 'package:flutter_design_patterns/design_patterns/behavioral/memento/command/shape_command.dart';

abstract interface class IMemento {
  ShapeCommand getState();
}
