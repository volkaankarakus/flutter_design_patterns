// ** AbstractFactory is a way to provide an interface for creating families of related or
//    dependent objects without their specifiying their concrete classes.

// It is a super set of factoryMethod.

// TECH
//  Google,Apple,Netflix

// CLOATING
//  LV,Nike,Gucci

// Companies -> FactoryMethod
// Industries -> AbstactFactory

// AbstractFactory is a Factory of Factories.

// BUTTON EXAMPLE
// If we are on Android we have different kinds of loading indicatiors and IOS too.

// To create AbstractFactory; first we create 2nd factoryMethod.

// FactoryMethod of Indicator
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformIndicator {
  Color color();
  Widget build();
}

class IosIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return CupertinoActivityIndicator(
      color: color(),
    );
  }

  @override
  Color color() {
    return Colors.grey;
  }
}

class AndroidIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return CircularProgressIndicator(
      color: color(),
    );
  }

  @override
  Color color() {
    return Colors.blue;
  }
}

class FactoryMethodIndicator {
  static PlatformIndicator getIndicator({required TargetPlatform platform}) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidIndicator();
      case TargetPlatform.iOS:
        return IosIndicator();
      default:
        return IosIndicator();
    }
  }
}
