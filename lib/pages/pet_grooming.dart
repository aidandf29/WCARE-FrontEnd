// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class PetGrooming extends StatefulWidget {
  @override
  _PetGroomingState createState() => _PetGroomingState();
}

class _PetGroomingState extends State<PetGrooming> {
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

  Widget build(BuildContext context) {
    var _pageController;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgroundsikat.png'))),
        alignment: Alignment.center,
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox.expand(
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() => _currentIndex = index);
                        },
                        children: <Widget>[
                          SizedBox(
                            height: 350,
                            width: 240,
                            child: Container(
                              alignment: Alignment.center,
                              decoration:
                                  BoxDecoration(color: Color(0xFF74B49B)),
                            ),
                          ),
                          SizedBox(
                            height: 350,
                            width: 240,
                            child: Container(
                              alignment: Alignment.center,
                              decoration:
                                  BoxDecoration(color: Color(0xFF74B49B)),
                            ),
                          ),
                          NavigationRail(
                              selectedIndex: _currentIndex,
                              destinations: [],
                              onDestinationSelected: (index) {
                                setState(() => _currentIndex = index);
                                _pageController.jumpToPage(index);
                              }),
                          SizedBox(
                            height: 350,
                            width: 240,
                            child: Container(
                              alignment: Alignment.center,
                              decoration:
                                  BoxDecoration(color: Color(0xFF74B49B)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      width: 270,
                      child: Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              color: Color(0xFFA7D7C5),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: GridView.count(
                              crossAxisCount: 3,
                              children: <Widget>[
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Color(0xFFA7D7C5),
                                  margin: EdgeInsets.all(10),
                                  child: InkWell(
                                    onTap: () {},
                                    focusColor: Colors.grey,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Image.asset('assets/kucing.png'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Cat',
                                            style: TextStyle(
                                                fontFamily: 'PTSerifCaption',
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Color(0xFFA7D7C5),
                                  margin: EdgeInsets.all(10),
                                  child: InkWell(
                                    onTap: () {},
                                    focusColor: Colors.grey,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Image.asset('assets/kelinci.png'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Kelinci',
                                            style: TextStyle(
                                                fontFamily: 'PTSerifCaption',
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Color(0xFFA7D7C5),
                                  margin: EdgeInsets.all(10),
                                  child: InkWell(
                                    onTap: () {},
                                    focusColor: Colors.grey,
                                    splashColor: Colors.grey,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/anjing.png',
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Anjing',
                                            style: TextStyle(
                                                fontFamily: 'PTSerifCaption',
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                      color: Color(0xFFA7D7C5),
                      child: Text(
                        'Pick up',
                        style: TextStyle(
                            fontFamily: 'PTSerifCaption',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      splashColor: Colors.greenAccent,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                      color: Color(0xFFA7D7C5),
                      child: Text(
                        'Delivered',
                        style: TextStyle(
                            fontFamily: 'PTSerifCaption',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      splashColor: Colors.greenAccent,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                      color: Color(0xFFA7D7C5),
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                            fontFamily: 'PTSerifCaption',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      splashColor: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//apus dann