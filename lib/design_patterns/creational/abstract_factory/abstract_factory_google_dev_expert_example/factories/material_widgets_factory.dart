import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/factories/i_widgets_factory.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/activity_indicators/android_indicator.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/activity_indicators/iactivityindicator.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/sliders/android_slider.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/sliders/islider.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/switchers/android_switch.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/switchers/iswitch.dart';

class MaterialWidgetsFactory implements IWidgetsFactory {
  const MaterialWidgetsFactory();
  @override
  IIndicator createIndicator() => const AndroidIndicator();

  @override
  ISlider createSlider() => const AndroidSlider();

  @override
  ISwitch createSwitch() => const AndroidSwitch();

  @override
  String getTitle() => 'ANDROID Widgets';
}
