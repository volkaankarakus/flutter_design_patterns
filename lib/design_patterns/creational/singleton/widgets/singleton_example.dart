import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/singleton/example_state.dart';
import 'package:flutter_design_patterns/design_patterns/creational/singleton/example_state_base.dart';
import 'package:flutter_design_patterns/design_patterns/creational/singleton/example_state_by_definition.dart';
import 'package:flutter_design_patterns/design_patterns/creational/singleton/example_state_without_singleton.dart';
import 'package:flutter_design_patterns/platform/platform_button.dart';

import 'singleton_example_card.dart';

class SingletonExample extends StatefulWidget {
  const SingletonExample();

  @override
  _SingletonExampleState createState() => _SingletonExampleState();
}

class _SingletonExampleState extends State<SingletonExample> {
  final List<ExampleStateBase> stateList = [
    ExampleState(),
    ExampleStateByDefinition.getState(),
    ExampleStateWithoutSingleton()
  ];

  void _setTextValues([String text = 'Singleton']) {
    for (final state in stateList) {
      state.setStateText(text);
    }
    setState(() {});
  }

  void _reset() {
    for (final state in stateList) {
      state.reset();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (var state in stateList)
              SingletonExampleCard(
                text: state.currentText,
              ),
            PlatformButton(
              materialColor: Colors.black,
              materialTextColor: Colors.white,
              onPressed: _setTextValues,
              text: "Change states' text to 'Singleton'",
            ),
            PlatformButton(
              materialColor: Colors.black,
              materialTextColor: Colors.white,
              onPressed: _reset,
              text: 'Reset',
            ),
            const Text(
              "Note: change states' text and navigate the application (e.g. go to main menu, then go back to this example) to see how the Singleton state behaves!",
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
