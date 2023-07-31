import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/creational/factory_method/factory_method_expert_example/idialog.dart';

class AndroidDialog extends IDialog {
  const AndroidDialog();

  @override
  Widget create(BuildContext context) {
    return AlertDialog(
      title: Text(getTitle()),
      content: const Text('This is the material-style alert dialog!'),
      actions: <Widget>[
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('Close'),
        ),
      ],
    );
  }

  @override
  String getTitle() => 'ANDROID Dialog';
}
