import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/factories/i_widgets_factory.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/activity_indicators/iactivityindicator.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/activity_indicators/ios_indicator.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/sliders/ios_slider.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/sliders/islider.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/switchers/ios_switch.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/switchers/iswitch.dart';

class CupertinoWidgetsFactory implements IWidgetsFactory {
  const CupertinoWidgetsFactory();

  @override
  IIndicator createIndicator() => const IosIndicator();

  @override
  ISlider createSlider() => const IosSlider();

  @override
  ISwitch createSwitch() => const IosSwitch();

  @override
  String getTitle() => 'IOS Widgets';
}
