// ignore_for_file: file_names

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    var _pageController = PageController();
  }

  @override
  void dispose() {
    var _pageController;
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _pageController;
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              color: Colors.blueGrey,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
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
                child: Text('History',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'PTSerifCaption')),
              ),
              icon: Icon(
                Icons.history,
                color: Colors.black,
              )),
          BottomNavyBarItem(
              title: Container(
                padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                child: Text('Likes',
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'PTSerifCaption')),
              ),
              icon: Icon(
                Icons.favorite,
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
        ],
      ),
    );
  }
}
