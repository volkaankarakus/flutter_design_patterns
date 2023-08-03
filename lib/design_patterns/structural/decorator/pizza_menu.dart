import 'package:flutter_design_patterns/design_patterns/structural/decorator/decorator_interface.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_base.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_toping_data.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_topings/basil.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_topings/mozeralla.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_topings/olive_oil.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_topings/oregano.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_topings/pecorino.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_topings/pepperoni.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/pizza_topings/sauce.dart';

class PizzaMenu {
  final Map<int, PizzaToppingData> _pizzaToppingDataMap = {
    1: PizzaToppingData('Basil'),
    2: PizzaToppingData('Mozzarella'),
    3: PizzaToppingData('Olive Oil'),
    4: PizzaToppingData('Oregano'),
    5: PizzaToppingData('Pecorino'),
    6: PizzaToppingData('Pepperoni'),
    7: PizzaToppingData('Sauce'),
  };

  Map<int, PizzaToppingData> getPizzaToppingDataMap() => _pizzaToppingDataMap;

  // ** Margherita
  Pizza _getMargherita() {
    Pizza pizza = const PizzaBase('Pizza Margharita');
    pizza = Sauce(pizza);
    pizza = Mozzarella(pizza);
    pizza = Basil(pizza);
    pizza = Oregano(pizza);
    pizza = Pecorino(pizza);
    pizza = OliveOil(pizza);

    return pizza;
  }

  // ** Pepperoni
  Pizza _getPepperoni() {
    Pizza pizza = const PizzaBase('Pizza Pepperoni');
    pizza = Sauce(pizza);
    pizza = Mozzarella(pizza);
    pizza = Pepperoni(pizza);
    pizza = Oregano(pizza);

    return pizza;
  }

  // ** Custom Pizza
  Pizza _getCustom(Map<int, PizzaToppingData> pizzaToppingsDataMap) {
    Pizza pizza = const PizzaBase('Custom Pizza');

    if (pizzaToppingsDataMap[1]!.selected) pizza = Basil(pizza);
    if (pizzaToppingsDataMap[2]!.selected) pizza = Mozzarella(pizza);
    if (pizzaToppingsDataMap[3]!.selected) pizza = OliveOil(pizza);
    if (pizzaToppingsDataMap[4]!.selected) pizza = Oregano(pizza);
    if (pizzaToppingsDataMap[5]!.selected) pizza = Pecorino(pizza);
    if (pizzaToppingsDataMap[6]!.selected) pizza = Pepperoni(pizza);
    if (pizzaToppingsDataMap[7]!.selected) pizza = Sauce(pizza);

    return pizza;
  }

  // ** Get Pizza
  Pizza getPizza(int index, Map<int, PizzaToppingData> pizzaToppingsDataMap) =>
      switch (index) {
        0 => _getMargherita(),
        1 => _getPepperoni(),
        2 => _getCustom(pizzaToppingsDataMap),
        _ => throw Exception("Index of '$index' does not exist."),
      };
}
