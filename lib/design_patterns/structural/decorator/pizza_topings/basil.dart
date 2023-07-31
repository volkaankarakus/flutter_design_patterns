import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_decorator.dart';

class Basil extends PizzaDecorator {
  Basil(super.pizza);

  @override
  String getDescription() => '${pizza.getDescription()}\n- Basil';

  @override
  double getPrice() => pizza.getPrice() + 0.2;
}
