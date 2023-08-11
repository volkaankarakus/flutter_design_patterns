import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/command/command_shape.dart';

class ShapeContainer extends StatelessWidget {
  final CommandShape shape;
  ShapeContainer({required this.shape});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: shape.height,
          width: shape.width,
          decoration: BoxDecoration(
            color: shape.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(
            Icons.star,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
