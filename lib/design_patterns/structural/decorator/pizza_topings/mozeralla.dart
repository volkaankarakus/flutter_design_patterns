import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_decorator.dart';

class Mozzarella extends PizzaDecorator {
  Mozzarella(super.pizza);

  @override
  String getDescription() => '${pizza.getDescription()}\n- Mozzarella';

  @override
  double getPrice() => pizza.getPrice() + 0.5;
}
