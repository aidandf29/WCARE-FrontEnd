import 'dart:ui';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFA7D7C5),
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
                    height: 320,
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
                              ),
                              splashColor: Colors.greenAccent,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              margin: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 20,
                              ),
                              padding: EdgeInsets.all(0),
                              child: Container(
                                height: 30,
                                width: 250,
                                child: TextField(
                                    decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.person),
                                        labelText: "Username",
                                        labelStyle: TextStyle(
                                            fontFamily: 'PTSerifCaption',
                                            fontSize: 14),
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
                                                width: 1))),
                                    keyboardType: TextInputType.name),
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
                              padding: EdgeInsets.all(0),
                              height: 30,
                              width: 250,
                              child: TextField(
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.mail),
                                      labelText: "E-mail",
                                      labelStyle: TextStyle(
                                          fontFamily: 'PTSerifCaption',
                                          fontSize: 14),
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
                                              width: 1.0))),
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
                              padding: EdgeInsets.all(0),
                              height: 30,
                              width: 250,
                              child: TextField(
                                  obscureText: isHiddenPassword,
                                  decoration: InputDecoration(
                                      suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(Icons.visibility),
                                      ),
                                      labelText: "Password",
                                      hintText: "8 Letter",
                                      labelStyle: TextStyle(
                                          fontFamily: 'PTSerifCaption',
                                          fontSize: 14),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          // ignore: prefer_const_constructors
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 2.0,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        // ignore: prefer_const_constructors
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1.0),
                                      )),
                                  keyboardType: TextInputType.text),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              margin: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 20,
                              ),
                              padding: EdgeInsets.all(0),
                              height: 30,
                              width: 250,
                              child: TextField(
                                  obscureText: isHiddenPassword,
                                  decoration: InputDecoration(
                                      labelText: "Confirm Password",
                                      suffixIcon: InkWell(
                                        onTap: _togglePasswordView,
                                        child: Icon(Icons.visibility),
                                      ),
                                      labelStyle: TextStyle(
                                          fontFamily: 'PTSerifCaption',
                                          fontSize: 14),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          // ignore: prefer_const_constructors
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                            width: 2.0,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        // ignore: prefer_const_constructors
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1.0),
                                      )),
                                  keyboardType: TextInputType.text),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FlatButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              // ignore: prefer_const_constructors
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              color: Colors.white,
                              child: Text(
                                'Create',
                                style: TextStyle(
                                    fontFamily: 'PTSerifCaption',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              splashColor: Colors.greenAccent,
                            ),
                            SizedBox(
                              height: 15,
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
                              splashColor: Colors.greenAccent,
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
                ]),
          ))
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
