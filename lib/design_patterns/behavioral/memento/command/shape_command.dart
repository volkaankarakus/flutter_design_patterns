import 'package:flutter/material.dart';

class ShapeCommand {
  Color color;
  double height;
  double width;

  ShapeCommand.initial()
      : color = Colors.black,
        height = 150,
        width = 150;

  ShapeCommand.copy(ShapeCommand shape)
      : color = shape.color,
        height = shape.height,
        width = shape.width;
}
