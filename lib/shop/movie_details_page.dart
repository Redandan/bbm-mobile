import 'package:flutter/material.dart';
import 'package:bbm/shop/actor_scroller.dart';
import 'package:bbm/shop/models.dart';
import 'package:bbm/shop/movie_detail_header.dart';
import 'package:bbm/shop/photo_scroller.dart';
import 'package:bbm/shop/story_line.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage(this.product);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieDetailHeader(product),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Storyline(product.storyline),
            ),
            PhotoScroller(product.photoUrls),
            SizedBox(height: 20.0),
            ActorScroller(product.actors),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
