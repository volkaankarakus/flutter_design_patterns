import 'package:flutter_design_patterns/design_patterns/creational/builder/builder_expert_example/ingredient.dart';

class Burger {
  final List<Ingredient> _ingredients = <Ingredient>[];

  late double _price;

  void addIngredient(Ingredient ingredient) => _ingredients.add(ingredient);

  String getFormattedIngredients() =>
      _ingredients.map((e) => e.getName()).join(', ');

  String getFormattedAllergens() => <String>{
        for (final ingredient in _ingredients) ...ingredient.getAllergens()
      }.join(', ');

  String getFormattedPrice() => '\$${_price.toStringAsFixed(2)}';

  void setPrice(double price) => _price = price;
}
