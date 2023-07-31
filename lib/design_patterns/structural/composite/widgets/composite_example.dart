import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/directory/directory.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/files/audio_file.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/files/image_file.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/files/text_file.dart';
import 'package:flutter_design_patterns/design_patterns/structural/composite/files/video_file.dart';

class CompositeExample extends StatelessWidget {
  const CompositeExample({super.key});

  Widget _buildMediaDirectory() {
    final musicDirectory = Docs('Music')
      ..addFile(const AudioFile(title: 'Darude - Sandstorm.mp3', size: 2612453))
      ..addFile(const AudioFile(title: 'Toto - Africa.mp3', size: 3219811))
      ..addFile(
        const AudioFile(
          title: 'Bag Raiders - Shooting Stars.mp3',
          size: 3811214,
        ),
      );

    final moviesDirectory = Docs('Movies')
      ..addFile(const VideoFile(title: 'The Matrix.avi', size: 951495532))
      ..addFile(
        const VideoFile(title: 'The Matrix Reloaded.mp4', size: 1251495532),
      );

    final catPicturesDirectory = Docs('Cats')
      ..addFile(const ImageFile(title: 'Cat 1.jpg', size: 844497))
      ..addFile(const ImageFile(title: 'Cat 2.jpg', size: 975363))
      ..addFile(const ImageFile(title: 'Cat 3.png', size: 1975363));

    final picturesDirectory = Docs('Pictures')
      ..addFile(catPicturesDirectory)
      ..addFile(const ImageFile(title: 'Not a cat.png', size: 2971361));

    final mediaDirectory = Docs('Media', isInitiallyExpanded: true)
      ..addFile(musicDirectory)
      ..addFile(moviesDirectory)
      ..addFile(picturesDirectory)
      ..addFile(Docs('New Folder'))
      ..addFile(
        const TextFile(title: 'Nothing suspicious there.txt', size: 430791),
      )
      ..addFile(const TextFile(title: 'TeamTrees.txt', size: 104));

    return mediaDirectory;
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior(),
      child: SingleChildScrollView(
        child: _buildMediaDirectory(),
      ),
    );
  }
}
