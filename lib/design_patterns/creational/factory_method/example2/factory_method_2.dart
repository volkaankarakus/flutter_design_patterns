import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformButton {
  Widget build(VoidCallback onPressed, Widget child);
}

class AndroidButton implements PlatformButton {
  @override
  Widget build(VoidCallback onPressed, Widget child) {
    return ElevatedButton(onPressed: onPressed, child: child);
  }
}

class IosButton implements PlatformButton {
  @override
  Widget build(VoidCallback onPressed, Widget child) {
    return CupertinoButton(onPressed: onPressed, child: child);
  }
}

class FactoryMethodButton {
  static PlatformButton getPlatform({required TargetPlatform platform}) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidButton();
      case TargetPlatform.iOS:
        return IosButton();
      default:
        return IosButton();
    }
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FactoryMethodButton.getPlatform(platform: TargetPlatform.iOS)
            .build(() {}, const Text('Click'))
      ],
    );
  }
}
