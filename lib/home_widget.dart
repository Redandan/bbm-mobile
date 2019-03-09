import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'social_widget.dart';
import 'profile/profile_homePage.dart';
import 'example_7.dart';
import 'example_8.dart';
import 'profile/profile_icons.dart';
import 'profile/profile_colors.dart';
import 'shop/shop_home.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {


  int _page = 0;
  PageController _pageController;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(

          children: [
            Example08(),
            Example07(),
//            ShopHome(),
            PlaceholderWidget(Colors.deepOrange),
            PlaceholderWidget(Colors.lightBlueAccent),
            ProfileHomePage(),
          ],
          controller: _pageController,
          onPageChanged: onPageChanged
      ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: navigationTapped,
        currentIndex: _page,

        items:
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              title: Text('shop')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              title: Text('plus')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              title: Text('bookmark')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          ),
        ],
      ),

    );
  }

  void navigationTapped(int page){
    _pageController.animateToPage(
        page,
        duration:  Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController =  PageController();
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }
  void onPageChanged(int page){
    setState((){
      this._page = page;
    });
  }

}