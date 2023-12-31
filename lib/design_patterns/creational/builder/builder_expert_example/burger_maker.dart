import 'package:flutter_design_patterns/design_patterns/creational/builder/builder_expert_example/burger.dart';
import 'package:flutter_design_patterns/design_patterns/creational/builder/builder_expert_example/burger_builder_base.dart';

class BurgerMaker {
  BurgerBuilderBase burgerBuilder;
  BurgerMaker(this.burgerBuilder);

  void changeBurgerBuilder(BurgerBuilderBase burgerBuilder) {
    this.burgerBuilder = burgerBuilder;
  }

  Burger getBurger() => burgerBuilder.getBurger();

  void prepareBurger() {
    burgerBuilder.createBurger();
    burgerBuilder.setBurgerPrice();

    burgerBuilder.addBuns();
    burgerBuilder.addCheese();
    burgerBuilder.addPatties();
    burgerBuilder.addSauces();
    burgerBuilder.addSeasoning();
    burgerBuilder.addVegetables();
  }
}
