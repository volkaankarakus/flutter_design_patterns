import 'package:flutter_design_patterns/design_patterns/behavioral/iterator/tree_iterators/itree_iterator.dart';

abstract interface class ITreeCollection {
  ITreeIterator createIterator();
  String getTitle();
}