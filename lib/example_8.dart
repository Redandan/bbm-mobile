import 'dart:math';
import 'dart:typed_data';
import 'package:bbm/graffiti/storyPage.dart';
import 'graffiti/story.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

final Uint8List kTransparentImage = new Uint8List.fromList(<int>[
  0x89,
  0x50,
  0x4E,
  0x47,
  0x0D,
  0x0A,
  0x1A,
  0x0A,
  0x00,
  0x00,
  0x00,
  0x0D,
  0x49,
  0x48,
  0x44,
  0x52,
  0x00,
  0x00,
  0x00,
  0x01,
  0x00,
  0x00,
  0x00,
  0x01,
  0x08,
  0x06,
  0x00,
  0x00,
  0x00,
  0x1F,
  0x15,
  0xC4,
  0x89,
  0x00,
  0x00,
  0x00,
  0x0A,
  0x49,
  0x44,
  0x41,
  0x54,
  0x78,
  0x9C,
  0x63,
  0x00,
  0x01,
  0x00,
  0x00,
  0x05,
  0x00,
  0x01,
  0x0D,
  0x0A,
  0x2D,
  0xB4,
  0x00,
  0x00,
  0x00,
  0x00,
  0x49,
  0x45,
  0x4E,
  0x44,
  0xAE,
]);

List<Story> _createGraffitis(int count) {
  Random rnd = new Random();
  return new List.generate(count,
      (i) => new Story((rnd.nextInt(500) + 200), rnd.nextInt(800) + 200));
}

class Example08 extends StatelessWidget {
  Example08() : _sizes = _createGraffitis(_kItemCount).toList();

  static const int _kItemCount = 1000;
  final List<Story> _sizes;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('橙姑娘社群'),
      ),
      body: new StaggeredGridView.countBuilder(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (context, index) => new _Tile(index, _sizes[index]),
        staggeredTileBuilder: (index) => new StaggeredTile.fit(2),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.index, this.story);

  final Story story;
  final int index;

  @override
  Widget build(BuildContext context) {
    GestureDetector content = GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => StoryPage(story)));
        },
        child: Column(children: <Widget>[
          Center(
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage, image: story.imgUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  'Image number $index',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  'Width: ${story.width}',
                  style: const TextStyle(color: Colors.grey),
                ),
                new Text(
                  'Height: ${story.height}',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ]));

    return new Card(
      child: new Column(
        children: <Widget>[content],
      ),
    );
  }
}
