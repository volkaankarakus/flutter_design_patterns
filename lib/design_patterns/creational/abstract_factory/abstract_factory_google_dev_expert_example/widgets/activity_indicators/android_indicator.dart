import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/abstract_factory/abstract_factory_google_dev_expert_example/widgets/activity_indicators/iactivityindicator.dart';

class AndroidIndicator implements IIndicator {
  const AndroidIndicator();

  @override
  Widget render() {
    return CircularProgressIndicator(
      backgroundColor: const Color(0xFFECECEC),
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.black.withOpacity(0.65),
      ),
    );
  }
}
