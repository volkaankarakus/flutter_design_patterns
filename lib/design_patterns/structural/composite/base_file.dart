import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/file_size_converter.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/ifile.dart';

base class File extends StatelessWidget implements IFile {
  final String title;
  final int size;
  final IconData icon;

  const File({required this.title, required this.size, required this.icon});

  @override
  Widget build(BuildContext context) => render(context);

  @override
  int getSize() => size;

  @override
  Widget render(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      leading: Icon(icon),
      trailing: Text(
        FileSizeConverter.bytesToString(size),
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.black54),
      ),
      dense: true,
    );
  }
}
