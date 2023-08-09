import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/prototype/shape.dart';

class CommandShape {
  CommandShape.initial()
      : color = Colors.black,
        height = 150.0,
        width = 150.0;

  Color color;
  double height;
  double width;
}
