// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA7D7C5),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Stack(children: [
          Center(
              child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Image.asset('assets/Group5.png')),
              ),
            ],
          ))),
          NavigationToolbar(
            // centerMiddle: Color(0xFFA7D7C5),
          )
        ]),
      ),
    );
  }
}
