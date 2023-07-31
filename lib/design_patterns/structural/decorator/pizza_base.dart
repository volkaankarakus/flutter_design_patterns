import 'package:flutter_design_patterns/design_patterns/structural/decorator/decorator_interface.dart';

class PizzaBase implements Pizza {
  final String description;
  const PizzaBase(this.description);

  @override
  String getDescription() => description;

  @override
  double getPrice() => 3.0;
}
