import 'dart:io';

import 'package:flutter/material.dart';

class PlatformBackButton extends StatelessWidget {
  const PlatformBackButton({super.key, 
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    final icon =
        Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios_new;

    return IconButton(
      icon: Icon(icon),
      color: color,
      splashRadius: 20.0,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
