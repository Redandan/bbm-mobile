import 'package:flutter/material.dart';
import 'package:bbm/shop/arc_banner_image.dart';
import 'package:bbm/shop/models.dart';
import 'package:bbm/shop/poster.dart';
import 'package:bbm/shop/rating_information.dart';

class MovieDetailHeader extends StatelessWidget {
  MovieDetailHeader(this.product);
  final Product product;

  List<Widget> _buildCategoryChips(TextTheme textTheme) {
    return product.categories.map((category) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Chip(
          label: Text(category),
          labelStyle: textTheme.caption,
          backgroundColor: Colors.black12,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var movieInformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: textTheme.title,
        ),

        SizedBox(height: 8.0),
        RatingInformation(product),
        SizedBox(height: 12.0),
        Row(children: _buildCategoryChips(textTheme)),
      ],
    );

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 180.0),
          child: ArcBannerImage(product.bannerUrl),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Poster(
                product.posterUrl,
                height: 180.0,
              ),
              SizedBox(width: 16.0),
              Expanded(child: movieInformation),
            ],
          ),
        ),
      ],
    );
  }
}
