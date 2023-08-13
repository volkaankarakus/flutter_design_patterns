import 'package:flutter_design_patterns/design_patterns/behavioral/iterator/tree_iterators/breadth_first_iterator.dart';

import '../graph.dart';
import '../tree_iterators/itree_iterator.dart';
import 'itree_collection.dart';

class BreadthFirstTreeCollection implements ITreeCollection {
  const BreadthFirstTreeCollection(this.graph);

  final Graph graph;

  @override
  ITreeIterator createIterator() => BreadthFirstIterator(this);

  @override
  String getTitle() => 'Breadth-first';
}
