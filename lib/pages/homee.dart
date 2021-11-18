// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
          0xFFA7D7C5,
        ),
        title: Column(
          children: [
            FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: Colors.white,
              child: Text(
                'Logout',
                style: TextStyle(
                    fontFamily: 'PTSerifCaption',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              splashColor: Colors.greenAccent,
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          child: Container(
                              width: 250,
                              alignment: Alignment.center,
                              child: Image.asset('assets/Group5.png'))),
                      Text(
                        'WCARE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF74B49B),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PTSerifCaption',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 200),
                        ),
                      ),
                      SizedBox(
                          height: 200,
                          width: 370,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF74B49B),
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: GridView.count(
                                crossAxisCount: 4,
                                children: <Widget>[
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color(0xFFA7D7C5),
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.greenAccent,
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/kelinci.png',
                                              height: 30,
                                            ),
                                            Text(
                                              "Pet Grooming",
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
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color(0xFFA7D7C5),
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.greenAccent,
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/anjing.png',
                                              height: 30,
                                            ),
                                            Text(
                                              "Pet Training",
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
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color(0xFFA7D7C5),
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.greenAccent,
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/kucing.png',
                                              height: 30,
                                            ),
                                            Text(
                                              "Pet Shop",
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
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color(0xFFA7D7C5),
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.greenAccent,
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/burung.png',
                                              height: 30,
                                            ),
                                            Text(
                                              "Pet Breed",
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
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color(0xFFA7D7C5),
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.greenAccent,
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/berang.png',
                                              height: 30,
                                            ),
                                            Text(
                                              "Pet Hotel",
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
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color(0xFFA7D7C5),
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.greenAccent,
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/Gecko.png',
                                              height: 50,
                                            ),
                                            Text(
                                              "Pet Sitter",
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
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color(0xFFA7D7C5),
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.greenAccent,
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/hamster.png',
                                              height: 30,
                                            ),
                                            Text(
                                              "Pet Adopt",
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
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    color: Color(0xFFA7D7C5),
                                    margin: EdgeInsets.all(10),
                                    child: InkWell(
                                      onTap: () {},
                                      splashColor: Colors.greenAccent,
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/hamster.png',
                                              height: 30,
                                            ),
                                            Text(
                                              "Coming Soon",
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
                                ],
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 30,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'WCARE Nearby',
                            style: TextStyle(
                                fontFamily: 'PTSerifCaption',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 120,
                        width: 350,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFA7D7C5),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: GridView.count(
                              crossAxisCount: 3,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Color(0xFF74B49B),
                                  margin: EdgeInsets.all(15),
                                  child: Text(
                                    'Jl, Pedati utara 1 no 23 Rt04/06 Cijantung, Pasar Rebo',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'PTSerifCaption',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Color(0xFF4E8AAB),
                                  margin: EdgeInsets.all(15),
                                  child: Text(
                                    'Jl, Pedati utara 1 no 23 Rt04/06 Cijantung, Pasar Rebo',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'PTSerifCaption',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  color: Color(0xFF4A4581),
                                  margin: EdgeInsets.all(15),
                                  child: Text(
                                    'Jl, Pedati utara 1 no 23 Rt04/06 Cijantung, Pasar Rebo',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'PTSerifCaption',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: FlatButton(
                        onPressed: () {},
                        child: SizedBox(
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.greenAccent,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/Petgrooming.png',
                                    height: 250,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: FlatButton(
                        onPressed: () {},
                        child: SizedBox(
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.greenAccent,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/Petgrooming.png',
                                    height: 250,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: FlatButton(
                        onPressed: () {},
                        child: SizedBox(
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.greenAccent,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/Petgrooming.png',
                                    height: 250,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: FlatButton(
                        onPressed: () {},
                        child: SizedBox(
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.greenAccent,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/Petgrooming.png',
                                    height: 250,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: FlatButton(
                        onPressed: () {},
                        child: SizedBox(
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.greenAccent,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/Petgrooming.png',
                                    height: 250,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}