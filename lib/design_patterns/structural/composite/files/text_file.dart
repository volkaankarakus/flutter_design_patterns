import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/base_file.dart';

final class TextFile extends File {
  const TextFile({super.key, required super.title, required super.size})
      : super(icon: Icons.description);
}


