import 'dart:ui';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:wcare/model/login.dart';
import 'package:wcare/pages/home.dart';
import 'package:wcare/pages/navbar.dart';
import 'package:wcare/pages/signup.dart';
import 'package:wcare/pages/user.dart';
import 'package:http/http.dart' as http;

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isHiddenPassword = true;
  String userId = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<Login> _destinations = <Login>[];
  @override
  void initState() {
    super.initState();
    // _populateDestinations();
  }

  @override
  Widget build(BuildContext context) {
    Future<List<Login>> _fetchAllDestinations() async {
      final response = await http.post(
          "https://wcare.herokuapp.com/api/v1/auth/login",
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'email': emailController.text,
            'password': passwordController.text
          }));
      print(emailController.text + " EMAIL");
      print(passwordController.text + " PASSWORD");
      if (response.statusCode == 200) {
        final List<dynamic> result = jsonDecode(response.body);
        return result.map((item) => Login.fromJson(item)).toList();
      } else {
        throw Exception("Failed to Login.");
      }
    }

    void _populateDestinations() async {
      try {
        final destinations = await _fetchAllDestinations();
        setState(() {
          _destinations = destinations;
          print(_destinations);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        });
      } catch (Exception) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text('Failed to Sign In'),
          duration: const Duration(seconds: 1),
        ));
      }
    }

    return Scaffold(
      body: Container(
        color: Color(0xFFA7D7C5),
        alignment: Alignment.center,
        child: Stack(children: [
          Center(
              child: SingleChildScrollView(
            child: Form(
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
                              SizedBox(
                                height: 10,
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
                                  child: TextFormField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                          hintText: "Your Email",
                                          suffixIcon: Icon(Icons.mail),
                                          labelText: "E-mail",
                                          labelStyle: TextStyle(
                                              fontFamily: 'PTSerifCaption',
                                              fontSize: 16),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                                width: 0.0,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: isHiddenPassword,
                                    decoration: InputDecoration(
                                        hintText: "8 letter",
                                        suffixIcon: InkWell(
                                          onTap: _togglePasswordView,
                                          child: Icon(Icons.visibility),
                                        ),
                                        labelText: "Password",
                                        labelStyle: TextStyle(
                                            fontFamily: 'PTSerifCaption',
                                            fontSize: 16),
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
                                              color: Colors.black, width: 1.0),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FlatButton(
                                onPressed: () => {
                                  _populateDestinations(),
                                  if (emailController.text.isEmpty ||
                                      passwordController.text.isEmpty)
                                    {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Empty Email or Password.')),
                                      )
                                    }
                                  else if (!RegExp(
                                          r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                      .hasMatch(emailController.text))
                                    {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text('Email not valid.')),
                                      )
                                    }
                                  else if (passwordController.text.length < 8)
                                    {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Password is less than 8.')),
                                      )
                                    }
                                  else
                                    {_populateDestinations()}
                                },
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
                                splashColor: Colors.greenAccent,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SignUp()));
                                },
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
                                splashColor: Colors.greenAccent,
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
                  ]),
            ),
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
