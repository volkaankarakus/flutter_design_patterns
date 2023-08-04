import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/ipositioned_shape.dart';

class PositionedShapeWrapper extends StatelessWidget {
  final IPositinedShape shape;
  const PositionedShapeWrapper({super.key, required this.shape});

  double _getPosition(double max, double min) {
    final randomPosition = Random().nextDouble() * max;
    return randomPosition > min ? randomPosition - min : randomPosition;
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return shape.render(
      _getPosition(sizeWidth, 16.0),
      _getPosition(sizeHeight, 192.0),
    );
  }
}
