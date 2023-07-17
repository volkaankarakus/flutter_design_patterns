import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/switchers/iswitch.dart';

class AndroidSwitch implements ISwitch {
  const AndroidSwitch();

  @override
  Widget render({required bool value, required ValueSetter<bool> onChanged}) {
    return Switch(
      activeColor: Colors.black,
      value: value,
      onChanged: onChanged,
    );
  }
}
