import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // create a list of tiles
  final List myTiles = [
    'A',
    'B',
    'C',
    'D',
  ];

  // lets create a method reorder method
  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      // adjustment when moving the tile down the list
      if (oldIndex < newIndex) {
        newIndex--;
      }
      // get the tiles
      final tile = myTiles.removeAt(oldIndex);
      // place the tiles in the new positon
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'Re-orderble widget',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: ReorderableListView(
        children: [
          for (final title in myTiles)
            ListTile(
              key: ValueKey(title),
              title: Text(title),
            ),
        ],
        onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex, newIndex),
      ),
    );
  }
}
