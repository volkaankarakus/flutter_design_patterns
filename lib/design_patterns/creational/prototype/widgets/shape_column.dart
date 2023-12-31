import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/prototype/shape.dart';
import 'package:flutter_design_patterns/platform/platform_button.dart';

class ShapeColumn extends StatelessWidget {
  final Shape shape;
  final Shape? shapeClone;
  final VoidCallback onRandomisePropertiesPressed;
  final VoidCallback onClonePressed;

  const ShapeColumn({super.key, 
    required this.shape,
    required this.shapeClone,
    required this.onRandomisePropertiesPressed,
    required this.onClonePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: _ShapeWithLabel(
                label: 'Original shape',
                child: shape.render(),
              ),
            ),
            Expanded(
              child: _ShapeWithLabel(
                label: 'Cloned shape',
                child: shapeClone == null
                    ? const SizedBox(
                        height: 120.0,
                        width: 120.0,
                        child: Placeholder(),
                      )
                    : shapeClone!.render(),
              ),
            ),
          ],
        ),
        PlatformButton(
          materialColor: Colors.black,
          materialTextColor: Colors.white,
          onPressed: onRandomisePropertiesPressed,
          text: 'Randomise properties',
        ),
        PlatformButton(
          materialColor: Colors.black,
          materialTextColor: Colors.white,
          onPressed: onClonePressed,
          text: 'Clone',
        ),
      ],
    );
  }
}

class _ShapeWithLabel extends StatelessWidget {
  final String label;
  final Widget child;

  const _ShapeWithLabel({
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(label),
        child,
      ],
    );
  }
}
