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
                      width: 200,
                      alignment: Alignment.center,
                      child: Image.asset('assets/Group5.png')),
                ),
                Text(
                  'WCARE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PTSerifCaption',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 260,
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
                            ),
                            child: Container(
                              height: 35,
                              width: 220,
                              child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Your Email",
                                      suffixIcon: Icon(Icons.mail),
                                      labelText: "E-mail",
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          // ignore: prefer_const_constructors
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 0.0,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          // ignore: prefer_const_constructors
                                          borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 1.0))),
                                  keyboardType: TextInputType.emailAddress),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            margin: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Container(
                              height: 35,
                              width: 220,
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
                                          width: 0.0,
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      // ignore: prefer_const_constructors
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),

                            // ignore: prefer_const_constructors
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),

                            color: Colors.white,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'PTSerifCaption',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
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
                              'Dont have account? SignUp',
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
                  height: 30,
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
