import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/widgets/activity_indicators/iactivityindicator.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/widgets/sliders/islider.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/widgets/switchers/iswitch.dart';

abstract class IWidgetsFactory {
  String getTitle();
  IIndicator createIndicator();
  ISlider createSlider();
  ISwitch createSwitch();
}
