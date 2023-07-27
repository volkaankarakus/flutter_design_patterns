import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/file_size_converter.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/ifile.dart';

class Docs extends StatelessWidget implements IFile {
  final String title;
  final bool isInitiallyExpanded;
  Docs(this.title, {this.isInitiallyExpanded = false});

  final List<IFile> files = [];

  void addFile(IFile file) => files.add(file);

  @override
  Widget build(BuildContext context) => render(context);

  @override
  int getSize() {
    var sum = 0;
    for (var file in files) {
      sum += file.getSize();
    }
    return sum;
  }

  @override
  Widget render(BuildContext context) {
    return ExpansionTile(
      leading: const Icon(Icons.folder),
      title: Text('$title (${FileSizeConverter.bytesToString(getSize())})'),
      initiallyExpanded: isInitiallyExpanded,
      children: files.map((IFile file) => file.render(context)).toList(),
    );
  }
}
