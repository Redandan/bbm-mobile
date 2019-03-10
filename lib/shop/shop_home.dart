import 'package:flutter/material.dart';
import 'package:bbm/shop/movie_api.dart';
import 'package:bbm/shop/movie_details_page.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform;

class ShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    bool isIosPlatform = defaultTargetPlatform == TargetPlatform.iOS;

    Widget iosAppbar =
    AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
    );
    Widget iosContent = new Scaffold(appBar: iosAppbar, body: MovieDetailsPage(testMovie));
    Widget androidContent = MovieDetailsPage(testMovie);


    if(isIosPlatform){
      return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: const Color(0xFFFF5959),
          ),
          home:iosContent);
    }else{
      return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: const Color(0xFFFF5959),
          ),
          home:androidContent);
    }

  }
}
