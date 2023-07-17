import 'package:flutter/cupertino.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/sliders/islider.dart';

class IosSlider implements ISlider {
    const IosSlider();



  @override
  Widget render(double value, ValueSetter<double> onChanged) {
    return CupertinoSlider(
      max: 100.0,
      value: value,
      onChanged: onChanged,
    );
  }
}
