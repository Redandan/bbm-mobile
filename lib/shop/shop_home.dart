import 'package:flutter/material.dart';
import 'package:bbm/shop/movie_api.dart';
import 'package:bbm/shop/movie_details_page.dart';

class ShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFFFF5959),
      ),
      home: MovieDetailsPage(testMovie),
    );
  }
}
