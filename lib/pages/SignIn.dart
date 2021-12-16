// // ignore: file_names
// // ignore_for_file: deprecated_member_use, avoid_print, file_names

// import 'dart:convert';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:wcare/pages/home.dart';
// import 'package:wcare/pages/navbar.dart';
// import 'package:wcare/pages/signup.dart';
// import 'package:wcare/pages/user.dart';
// import 'package:http/http.dart' as http;



// class SignIn extends StatefulWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   SignIn({Key? key}) : super(key: key);

//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   final _formKey = GlobalKey<FormState>();

  
//     @override
//     void initState() {
//       super.initState();  
//     }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

//   @override
//   Widget build(BuildContext context) { 
//   // static var currentState;
//   Future save() async {
//     var res = await http.post("https://wcare.herokuapp.com/api/v1/auth/login",
      
//         headers: <String, String>{
//           'Context-Type': 'application/json;charSet=UTF-8'
//         },
//         body: jsonEncode( <String, String>{
//           'email': user.email,
//           'password': user.password
//         }));
//       print(user.email + " EMAIL");
//       print(user.password + " PASSWORD");

//       if (res.statusCode == 200) {
//         final List<dynamic> result = jsonDecode(res.body);
//         return result.map((item) => Login.fromJson(item)).toList();
//       } else {
//         throw Exception("Failed to Login.");
//       }
//     }

//   bool isHiddenPassword = true;

//   User user = User('', '', '');
//   var x = currentState;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Color(0xFFA7D7C5),
//         alignment: Alignment.center,
//         child: Stack(children: [
//           Center(
//               child: SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Center(
//                       child: Container(
//                           width: 200,
//                           alignment: Alignment.center,
//                           child: Image.asset('assets/Group5.png')),
//                     ),
//                     Text(
//                       'WCARE',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: 'PTSerifCaption',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     SizedBox(
//                       height: 260,
//                       width: 250,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Color(0xFF74B49B),
//                             borderRadius: BorderRadius.circular(25)),
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(25)),
//                                 margin: EdgeInsets.symmetric(
//                                   vertical: 5,
//                                 ),
//                                 child: Container(
//                                   height: 35,
//                                   width: 220,
//                                   child: TextFormField(
//                                       controller: TextEditingController(
//                                           text: user.email),
//                                       onChanged: (value) {
//                                         user.email = value;
//                                       },
//                                       validator: (value) {
//                                         if (value.isEmpty) {
//                                           return 'Enter something';
//                                         } else if (RegExp(
//                                                 r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                             .hasMatch(value)) {
//                                           return null;
//                                         } else {
//                                           return 'Enter valid email';
//                                         }
//                                       },
//                                       decoration: InputDecoration(
//                                           hintText: "Your Email",
//                                           suffixIcon: Icon(Icons.mail),
//                                           labelText: "E-mail",
//                                           labelStyle: TextStyle(
//                                               fontFamily: 'PTSerifCaption',
//                                               fontSize: 16),
//                                           enabledBorder: OutlineInputBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(25),
//                                               borderSide: BorderSide(
//                                                 color: Colors.grey,
//                                                 width: 0.0,
//                                               )),
//                                           focusedBorder: OutlineInputBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(25),
//                                               borderSide: BorderSide(
//                                                   color: Colors.black,
//                                                   width: 1.0))),
//                                       keyboardType: TextInputType.emailAddress),
//                                 ),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(25)),
//                                 margin: EdgeInsets.symmetric(
//                                   vertical: 5,
//                                 ),
//                                 child: Container(
//                                   height: 35,
//                                   width: 220,
//                                   child: TextFormField(
//                                     controller:
//                                         TextEditingController(text: user.email),
//                                     onChanged: (value) {
//                                       user.password = value;
//                                     },
//                                     validator: (value) {
//                                       if (value.isEmpty) {
//                                         return 'Enter something';
//                                       }
//                                       return null;
//                                     },
//                                     obscureText: isHiddenPassword,
//                                     decoration: InputDecoration(
//                                         hintText: "8 letter",
//                                         suffixIcon: InkWell(
//                                           onTap: _togglePasswordView,
//                                           child: Icon(Icons.visibility),
//                                         ),
//                                         labelText: "Password",
//                                         labelStyle: TextStyle(
//                                             fontFamily: 'PTSerifCaption',
//                                             fontSize: 16),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(25),
//                                             // ignore: prefer_const_constructors
//                                             borderSide: BorderSide(
//                                               color: Colors.grey,
//                                               width: 0.0,
//                                             )),
//                                         focusedBorder: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(25),
//                                           // ignore: prefer_const_constructors
//                                           borderSide: BorderSide(
//                                               color: Colors.black, width: 1.0),
//                                         )),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               FlatButton(
//                                 onPressed: () {
//                                   if (_formKey.currentState.validate()) {
//                                     save();
//                                   } else {
//                                     print("Failed");
//                                   }
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(50)),

//                                 // ignore: prefer_const_constructors
//                                 padding: EdgeInsets.symmetric(
//                                     vertical: 0, horizontal: 0),

//                                 color: Colors.white,
//                                 child: Text(
//                                   'Login',
//                                   style: TextStyle(
//                                       fontFamily: 'PTSerifCaption',
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15),
//                                 ),
//                                 splashColor: Colors.greenAccent,
//                               ),
//                               SizedBox(
//                                 height: 15,
//                               ),
//                               FlatButton(
//                                 onPressed: () {
//                                   Navigator.pushReplacement(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (BuildContext context) =>
//                                               SignUp()));
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(50)),
//                                 padding: EdgeInsets.symmetric(
//                                     vertical: 0, horizontal: 0),
//                                 color: Colors.transparent,
//                                 child: Text(
//                                   'Dont have account? SignUp',
//                                   style: TextStyle(
//                                       fontFamily: 'PTSerifCaption',
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 10),
//                                 ),
//                                 splashColor: Colors.greenAccent,
//                               ),
//                             ]),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       'Beta Version',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 10,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'PTSerifCaption'),
//                     ),
//                   ]),
//             ),
//           ))
//         ]),
//       ),
//     );
//   }

//   void _togglePasswordView() {
//     setState(() {
//       isHiddenPassword = !isHiddenPassword;
//     });
//   }
// }
