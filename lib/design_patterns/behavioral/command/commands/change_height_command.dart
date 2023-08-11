import 'package:faker/faker.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command_shape.dart';

import '../command.dart';

class ChangeHeightCommand implements Command {
  final double previousHeight;
  CommandShape shape;

  ChangeHeightCommand(this.shape) : previousHeight = shape.height;

  @override
  String getTitle() => 'Change Height';

  @override
  void execute() => shape.height = random.integer(150, min: 50).toDouble();

  @override
  void undo() => shape.height = previousHeight;
}
