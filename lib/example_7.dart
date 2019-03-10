import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'shop/shop_home.dart';
class Example07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new StaggeredGridView.count(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 0.0,
        children: <Widget>[
          new _Tile(
              'https://s3-ap-southeast-1.amazonaws.com/redan-temp-img/prodImg/30%E5%85%AC%E5%88%86%E5%A5%BD%E6%A3%92%E6%A3%92_%E4%B8%89%E7%89%88/D_30%E5%85%AC%E5%88%86%E4%B8%BB%E5%9C%96.jpg',
              1),
          new _Tile(
              'https://s3-ap-southeast-1.amazonaws.com/redan-temp-img/prodImg/%E5%9B%BA%E6%9C%AC%E5%9F%B9%E5%8A%9B(%E7%AC%AC%E4%B8%80%E7%89%88)/%E5%9B%BA%E6%9C%AC%E5%9F%B9%E5%8A%9B%E4%B8%BB%E5%9C%96.jpg',
              2),
          new _Tile(
              'https://s3-ap-southeast-1.amazonaws.com/redan-temp-img/prodImg/%E7%9B%8A%E7%94%9F%E8%8F%8C%E7%AC%AC2%E7%89%88-20190211/%E3%80%90%E7%AC%AC2%E7%89%88%E3%80%91%E9%80%99%E5%B0%B1%E6%98%AF%E9%82%84%E6%B4%BB%E8%91%97%E7%9A%84%E7%9B%8A%E7%94%9F%E8%8F%8C160%E5%84%84.jpg',
              3),
          new _Tile(
              'https://s3-ap-southeast-1.amazonaws.com/redan-temp-img/prodImg/%E6%A2%85%E7%B2%BE%E6%96%B0%E7%89%880103/%E6%A2%85%E7%B2%BE%E9%8A%B7%E5%94%AE%E6%A5%AD_04.jpg',
              4),
          new _Tile(
              'https://s3-ap-southeast-1.amazonaws.com/redan-temp-img/prodImg/%E8%91%A1%E8%90%84%E7%B1%BD0103_(%E7%AC%AC%E4%BA%8C%E7%89%88)/OPC%E9%8A%B7%E5%94%AE%E6%A5%AD_01.jpg',
              5),
          new _Tile(
              'https://cdn.pixabay.com/photo/2013/04/13/18/42/the-eiffel-tower-103417_960_720.jpg',
              6),
          new _Tile(
              'https://cdn.pixabay.com/photo/2017/08/24/22/37/gyrfalcon-2678684_960_720.jpg',
              7),
          new _Tile(
              'https://cdn.pixabay.com/photo/2013/01/17/08/25/sunset-75159_960_720.jpg',
              8),
        ],
        staggeredTiles: const <StaggeredTile>[
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(1),
          const StaggeredTile.fit(3),
          const StaggeredTile.fit(3),
          const StaggeredTile.fit(1),
          const StaggeredTile.fit(2),
          const StaggeredTile.fit(2),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.source, this.index);

  final String source;
  final int index;

  @override
  Widget build(BuildContext context) {
    GestureDetector content = GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ShopHome()));
        },
        child: Column(children: <Widget>[

          new Image.network(source),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  'Image number $index',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  'Vincent Van Gogh',
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
