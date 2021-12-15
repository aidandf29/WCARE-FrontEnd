// ignore_for_file: file_names

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:get/get.dart';
import 'dart:ui';
import 'package:wcare/servicePage/controller.dart';
import 'package:flutter/material.dart';
import 'package:wcare/pages/Profil.dart';
import 'package:wcare/pages/checkout/checkout_page.dart';
import 'package:wcare/pages/home.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
  final CartController = Get.put(cartController());

  var _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController;
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _pageController;
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              child: Home(),
            ),
            Container(
              child: ItemCheckout(),
            ),
            Container(
              child: Profil(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color(0xFFA7D7C5),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Container(
                padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                child: Text('Home',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'PTSerifCaption')),
              ),
              icon: Icon(
                Icons.home,
                color: Colors.black,
              )),
          BottomNavyBarItem(
              title: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('Status',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'PTSerifCaption')),
              ),
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              )),
          BottomNavyBarItem(
              title: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('Profile',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'PTSerifCaption')),
              ),
              icon: Icon(
                Icons.person,
                color: Colors.black,
              )),
          BottomNavyBarItem(
              title: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('Likes',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'PTSerifCaption')),
              ),
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              )),
        ],
      ),
    );
  }

  void onItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
