import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/ipositioned_shape.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/shape_type_enum.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/shapes/circle_shape.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/shapes/square_shape.dart';

class ShapeFactory {
  const ShapeFactory();

  IPositinedShape createShape(ShapeType shapeType) => switch (shapeType) {
        ShapeType.circle => CircleShape(
            color: Colors.red.withOpacity(0.2),
            diameter: 10.0,
          ),
        ShapeType.square => SquareShape(
            color: Colors.blue.withOpacity(0.2),
            width: 10.0,
          )
      };
}
