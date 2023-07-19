import 'package:flutter/cupertino.dart';
import 'package:flutter_design_patterns/design_patterns/creational/factory_method/factory_method_expert_example/idialog.dart';

class IosDialog extends IDialog {
  const IosDialog();

  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(getTitle()),
      content: const Text('This is the cupertino-style alert dialog!'),
      actions: <Widget>[
        CupertinoButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('Close'),
        ),
      ],
    );
  }

  @override
  String getTitle() => 'IOS Dialog';
}
