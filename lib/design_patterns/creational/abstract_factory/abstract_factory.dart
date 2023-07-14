// AbstractFactory is factory of factory.
//  Alternative to Facade Pattern
//  Used along with Bridge.
//  Implemented as a Singleton.

// There are 2 approach you can take while using AbstractFactory.

// Way 1 : Creating an abstact class
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/second_factory_method_for_create_abstract_factory.dart';
import 'package:flutter_design_patterns/design_patterns/creational/factory_method/example2/factory_method_2.dart';

abstract class AbstractFactory {
  Widget buildButton({
    required BuildContext context,
    required String text,
    required VoidCallback onPressed,
  });
  Widget buildIndicator({required BuildContext context});
}

class AbstractFactoryImplementation implements AbstractFactory {
  @override
  Widget buildIndicator({required BuildContext context}) {
    return FactoryMethodIndicator.getIndicator(
            platform: Theme.of(context).platform)
        .build();
  }

  @override
  Widget buildButton(
      {required BuildContext context,
      required String text,
      required VoidCallback onPressed}) {
    return FactoryMethodButton.getPlatform(platform: Theme.of(context).platform)
        .build(onPressed, Text(text));
  }
}

// Way 2 : don't use abstract class -> use static instaad of that
class AbstractFactoryImplementationWithoutAbstract {
  static Widget buildIndicator({required BuildContext context}) {
    return FactoryMethodIndicator.getIndicator(
            platform: Theme.of(context).platform)
        .build();
  }

  static Widget buildButton(
      {required BuildContext context,
      required String text,
      required VoidCallback onPressed}) {
    return FactoryMethodButton.getPlatform(platform: Theme.of(context).platform)
        .build(onPressed, Text(text));
  }
}
