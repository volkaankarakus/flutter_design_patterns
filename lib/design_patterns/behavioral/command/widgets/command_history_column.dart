import 'package:flutter/material.dart';

class CommandHistoryColumn extends StatelessWidget {
  final List<String> commandList;
  CommandHistoryColumn({required this.commandList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Command History'),
        if (commandList.isEmpty) const Text('Command history is empty'),
        for (var i = 0; i < commandList.length; i++)
          Text('${i + 1}. ${commandList[i]}')
      ],
    );
  }
}
