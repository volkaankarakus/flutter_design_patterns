import 'package:faker/faker.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command_shape.dart';

class ChangeWidthCommand implements Command {
  final double previousWidth;
  CommandShape shape;
  ChangeWidthCommand(this.shape) : previousWidth = shape.width;

  @override
  String getTitle() => 'Change Width';

  @override
  void execute() => shape.width = random.integer(150, min: 50).toDouble();

  @override
  void undo() => shape.width = previousWidth;
}
