// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
          children: [],
        ),
      ),
    );
  }
}
