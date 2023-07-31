import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_decorator.dart';

class OliveOil extends PizzaDecorator {
  OliveOil(super.pizza);

  @override
  String getDescription() => '${pizza.getDescription()}\n- Olive Oil';

  @override
  double getPrice() => pizza.getPrice() + 0.1;
}
