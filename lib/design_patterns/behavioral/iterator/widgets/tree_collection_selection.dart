import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/iterator/tree_collections/itree_collection.dart';


class TreeCollectionSelection extends StatelessWidget {
  final List<ITreeCollection> treeCollections;
  final int selectedIndex;
  final ValueSetter<int?>? onChanged;

  const TreeCollectionSelection({
    required this.treeCollections,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (var i = 0; i < treeCollections.length; i++)
          RadioListTile(
            title: Text(treeCollections[i].getTitle()),
            value: i,
            groupValue: selectedIndex,
            selected: i == selectedIndex,
            activeColor: Colors.black,
            onChanged: onChanged,
          ),
      ],
    );
  }
}