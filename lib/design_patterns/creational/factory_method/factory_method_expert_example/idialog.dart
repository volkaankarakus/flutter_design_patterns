import 'package:flutter/material.dart';

abstract class IDialog {
  const IDialog();

  String getTitle();
  Widget create(BuildContext context);

  Future<void> show(BuildContext context) => showDialog<void>(
        context: context,
        builder: create,
        barrierDismissible: false,
      );
}
