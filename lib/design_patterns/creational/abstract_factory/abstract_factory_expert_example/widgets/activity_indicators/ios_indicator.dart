import 'package:flutter/cupertino.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/widgets/activity_indicators/iactivityindicator.dart';

class IosIndicator implements IIndicator {
  const IosIndicator();

  @override
  Widget render() {
    return const CupertinoActivityIndicator();
  }
}
