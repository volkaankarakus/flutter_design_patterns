import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/factory_method/factory_method_expert_example/IDialog.dart';
import 'package:flutter_design_patterns/design_patterns/creational/factory_method/factory_method_expert_example/widgets/android_dialog.dart';
import 'package:flutter_design_patterns/design_patterns/creational/factory_method/factory_method_expert_example/widgets/ios_dialog.dart';
import 'package:flutter_design_patterns/platform/platform_button.dart';

import 'dialog_selection.dart';

class FactoryMethodExample extends StatefulWidget {
  const FactoryMethodExample();

  @override
  _FactoryMethodExampleState createState() => _FactoryMethodExampleState();
}

class _FactoryMethodExampleState extends State<FactoryMethodExample> {
  final List<IDialog> dialogList = [
    AndroidDialog() as IDialog,
    IosDialog() as IDialog,
  ];

  var _selectedDialogIndex = 0;

  Future _showCustomDialog(BuildContext context) async {
    final selectedDialog = dialogList[_selectedDialogIndex];

    await selectedDialog.show(context);
  }

  void _setSelectedDialogIndex(int? index) {
    if (index == null) return;

    setState(() => _selectedDialogIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DialogSelection(
              customDialogList: dialogList,
              selectedIndex: _selectedDialogIndex,
              onChanged: _setSelectedDialogIndex,
            ),
            PlatformButton(
              materialColor: Colors.black,
              materialTextColor: Colors.white,
              onPressed: () => _showCustomDialog(context),
              text: 'Show Dialog',
            ),
          ],
        ),
      ),
    );
  }
}
