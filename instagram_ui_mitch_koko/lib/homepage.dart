import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_mitch_koko/pages/home_page_two.dart';
import 'package:instagram_ui_mitch_koko/pages/reels_page.dart';
import 'package:instagram_ui_mitch_koko/pages/search_page.dart';
import 'package:instagram_ui_mitch_koko/pages/shop_page.dart';

import 'pages/account_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    HomePageTwo(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    AccountPage(),
  ];
  var selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
