import 'package:flutter_design_patterns/design_patterns/structural/flyweight/ipositioned_shape.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/shape_factory.dart';
import 'package:flutter_design_patterns/design_patterns/structural/flyweight/shape_type_enum.dart';

class ShapeFlyWeightFactory {
  final ShapeFactory shapeFactory;
  ShapeFlyWeightFactory({required this.shapeFactory});

  final Map<ShapeType, IPositinedShape> shapesMap = {};

  // ** Get Shape
  IPositinedShape getShape(ShapeType shapeType) {
    if (!shapesMap.containsKey(shapeType)) {
      shapesMap[shapeType] = shapeFactory.createShape(shapeType);
    }
    return shapesMap[shapeType]!;
  }

  // ** Get Shape Instances Count
  int getShapeInstancesCount() => shapesMap.length;
}
