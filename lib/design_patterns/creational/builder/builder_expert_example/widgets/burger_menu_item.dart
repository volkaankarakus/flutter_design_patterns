import 'package:flutter_design_patterns/design_patterns/creational/builder/builder_expert_example/burger_builder_base.dart';

class BurgerMenuItem {
  const BurgerMenuItem({
    required this.label,
    required this.burgerBuilder,
  });

  final String label;
  final BurgerBuilderBase burgerBuilder;
}
