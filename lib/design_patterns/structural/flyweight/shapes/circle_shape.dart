import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/ipositioned_shape.dart';

class CircleShape implements IPositinedShape {
  final Color color;
  final double diameter;
  const CircleShape({
    required this.color,
    required this.diameter,
  });

  @override
  Widget render(double x, double y) {
    return Positioned(
      left: x,
      bottom: y,
      child: Container(
        height: diameter,
        width: diameter,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
