import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:farmer/pages/cart.dart';
import 'package:farmer/pages/product.dart';
import 'package:farmer/pages/profile.dart';
import 'package:farmer/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int _bottomNavIndex = 0;

class _HomePageState extends State<HomePage> {
  List homeList = [ProductPage(),CartPage(),ProfilePage(),SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: homeList[_bottomNavIndex]),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.teal.shade900,
        activeColor: Colors.white.withOpacity(0.9),
        inactiveColor: Colors.white.withOpacity(0.5),
        iconSize: 25,
        icons: [
          _bottomNavIndex == 0 ? Icons.home_filled : Icons.home_outlined,
          _bottomNavIndex == 1 ? Icons.sell : Icons.sell_outlined,
          _bottomNavIndex == 2 ? Icons.person : Icons.person_outline,
          _bottomNavIndex == 3 ? Icons.settings : Icons.settings_outlined,
        ],
        activeIndex: _bottomNavIndex,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        onTap: (index) => setState(() {
          _bottomNavIndex = index;
        }),
      ),
    );
  }
}
