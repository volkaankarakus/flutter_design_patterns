import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/factories/cupertino_widgets_factory.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/factories/i_widgets_factory.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/factories/material_widgets_factory.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/widgets/activity_indicators/iactivityindicator.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/widgets/sliders/islider.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_expert_example/widgets/switchers/iswitch.dart';

import 'factory_selection.dart';

class AbstractFactoryExample extends StatefulWidget {
  const AbstractFactoryExample({super.key});

  @override
  _AbstractFactoryExampleState createState() => _AbstractFactoryExampleState();
}

class _AbstractFactoryExampleState extends State<AbstractFactoryExample> {
  final List<IWidgetsFactory> widgetsFactoryList = const [
    MaterialWidgetsFactory(),
    CupertinoWidgetsFactory(),
  ];

  var _selectedFactoryIndex = 0;

  late IIndicator _activityIndicator;

  late ISlider _slider;
  var _sliderValue = 50.0;
  String get _sliderValueString => _sliderValue.toStringAsFixed(0);

  late ISwitch _switch;
  var _switchValue = false;
  String get _switchValueString => _switchValue ? 'ON' : 'OFF';

  @override
  void initState() {
    super.initState();
    _createWidgets();
  }

  void _createWidgets() {
    _activityIndicator =
        widgetsFactoryList[_selectedFactoryIndex].createIndicator();
    _slider = widgetsFactoryList[_selectedFactoryIndex].createSlider();
    _switch = widgetsFactoryList[_selectedFactoryIndex].createSwitch();
  }

  void _setSelectedFactoryIndex(int? index) {
    if (index == null) return;

    setState(() {
      _selectedFactoryIndex = index;
      _createWidgets();
    });
  }

  void _setSliderValue(double value) => setState(() => _sliderValue = value);

  void _setSwitchValue(bool value) => setState(() => _switchValue = value);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FactorySelection(
              widgetsFactoryList: widgetsFactoryList,
              selectedIndex: _selectedFactoryIndex,
              onChanged: _setSelectedFactoryIndex,
            ),
            Text(
              'Widgets showcase',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Process indicator',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            _activityIndicator.render(),
            Text(
              'Slider ($_sliderValueString%)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            _slider.render(_sliderValue, _setSliderValue),
            Text(
              'Switch ($_switchValueString)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            _switch.render(
              value: _switchValue,
              onChanged: _setSwitchValue,
            ),
          ],
        ),
      ),
    );
  }
}
