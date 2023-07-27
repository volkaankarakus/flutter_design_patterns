import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/base_file.dart';

final class AudioFile extends File {
  const AudioFile({
    required super.title,
    required super.size,
  }) : super(icon: Icons.music_note);
}
