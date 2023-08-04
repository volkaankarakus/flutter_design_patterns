import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/ipositioned_shape.dart';

class SquareShape implements IPositinedShape {
  final Color color;
  final double width;
  const SquareShape({
    required this.color,
    required this.width,
  });

  double get _height => width;

  @override
  Widget render(double x, double y) {
    return Positioned(
        left: x,
        bottom: y,
        child: Container(
          height: _height,
          width: width,
          color: color,
        ));
  }
}
