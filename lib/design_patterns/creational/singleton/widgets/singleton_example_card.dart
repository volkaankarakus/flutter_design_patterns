import 'package:flutter/material.dart';

class SingletonExampleCard extends StatelessWidget {
  final String text;

  const SingletonExampleCard({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 64.0,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
