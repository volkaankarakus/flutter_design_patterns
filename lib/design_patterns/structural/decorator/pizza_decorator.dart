import 'decorator_interface.dart';

abstract class PizzaDecorator implements Pizza {
  final Pizza pizza;
  const PizzaDecorator(this.pizza);

  @override
  String getDescription() => pizza.getDescription();

  @override
  double getPrice() => pizza.getPrice();
}
