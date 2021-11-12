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
      body: Container(
        color: Color(0xFFA7D7C5),
        alignment: Alignment.center,
        child: Stack(children: [
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Center(
                  child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                      child: Image.asset('assets/Group5.png')),
                ),
                Text(
                  'WCARE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSerifCaption'),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 370,
                  width: 250,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF74B49B),
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlatButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              color: Colors.white,
                              child: Text(
                                'Continue With Google',
                                style: TextStyle(
                                    fontFamily: 'PTSerifCaption',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            margin: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            padding: EdgeInsets.all(5),
                            child: Container(
                              height: 30,
                              width: 190,
                              child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Username",
                                      suffixIcon: Icon(Icons.mail),
                                      labelText: "Username",
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          // ignore: prefer_const_constructors
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 2.0,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          // ignore: prefer_const_constructors
                                          borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2.0))),
                                  keyboardType: TextInputType.emailAddress),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            margin: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            padding: EdgeInsets.all(5),
                            height: 40,
                            width: 200,
                            child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Your Email",
                                    suffixIcon: Icon(Icons.mail),
                                    labelText: "E-mail",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        // ignore: prefer_const_constructors
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: 2.0,
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        // ignore: prefer_const_constructors
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2.0))),
                                keyboardType: TextInputType.emailAddress),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            margin: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            padding: EdgeInsets.all(5),
                            height: 40,
                            width: 200,
                            child: TextField(
                              obscureText: isHiddenPassword,
                              decoration: InputDecoration(
                                  hintText: "8 letter",
                                  suffixIcon: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(Icons.visibility),
                                  ),
                                  labelText: "Password",
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      // ignore: prefer_const_constructors
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    // ignore: prefer_const_constructors
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  )),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            margin: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            padding: EdgeInsets.all(5),
                            height: 40,
                            width: 200,
                            child: TextField(
                              obscureText: isHiddenPassword,
                              decoration: InputDecoration(
                                  hintText: "8 letter",
                                  suffixIcon: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(Icons.visibility),
                                  ),
                                  labelText: "Confirm",
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      // ignore: prefer_const_constructors
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2.0,
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    // ignore: prefer_const_constructors
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2.0),
                                  )),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            // ignore: prefer_const_constructors
                            padding: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 100),
                            color: Colors.white,
                            child: Text(
                              'Create',
                              style: TextStyle(
                                  fontFamily: 'PTSerifCaption',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            color: Colors.transparent,
                            child: Text(
                              'Have Account? SignIn',
                              style: TextStyle(
                                  fontFamily: 'PTSerifCaption',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Beta Version',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSerifCaption'),
                ),
              ]))
        ]),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
