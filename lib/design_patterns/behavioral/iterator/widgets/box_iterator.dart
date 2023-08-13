import 'package:flutter/material.dart';

class BoxIterator extends StatelessWidget {
  final int nodeId;
  final Color color;
  final Widget? child;

  const BoxIterator({
    required this.nodeId,
    required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      color: color,
      child: Column(
        children: <Widget>[
          Text(
            nodeId.toString(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          if (child != null) child!,
        ],
      ),
    );
  }
}
