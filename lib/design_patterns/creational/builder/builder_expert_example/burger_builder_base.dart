import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/builder/builder_expert_example/burger.dart';

abstract class BurgerBuilderBase {
  @protected
  late Burger burger;

  @protected
  late double price;

  void createBurger() => burger = Burger();

  Burger getBurger() => burger;

  void setBurgerPrice() => burger.setPrice(price);

  void addBuns();
  void addCheese();
  void addPatties();
  void addSauces();
  void addSeasoning();
  void addVegetables();
}
