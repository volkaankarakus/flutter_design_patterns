import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/decorator/decorator_interface.dart';

class PizzaInformation extends StatelessWidget {
  final Pizza pizza;

  const PizzaInformation({
    required this.pizza,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Pizza details:',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          pizza.getDescription(),
          textAlign: TextAlign.justify,
        ),
        Text('Price: \$${pizza.getPrice().toStringAsFixed(2)}'),
      ],
    );
  }
}
