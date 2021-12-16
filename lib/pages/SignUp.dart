// // ignore_for_file: avoid_print

// import 'dart:ui';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:wcare/model/login.dart';
// import 'package:wcare/pages/home.dart';
// import 'package:wcare/pages/navbar.dart';
// import 'package:wcare/pages/signin.dart';
// import 'package:wcare/pages/user.dart';
// import 'package:http/http.dart' as http;

// class SignUp extends StatefulWidget {
// <<<<<<< HEAD
//   SignUp({Key? key}) : super(key: key);

// =======
// >>>>>>> 69dacb306e4a5c560cca10659bc8c176becb69d7
//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
// <<<<<<< HEAD
//   final _formKey = GlobalKey<FormState>();
//   Future save() async {
//     var res = await http.post("https://wcare.herokuapp.com/api/v1/auth/signup",
//         headers: <String, String>{
//           'Context-Type': 'application/json;charSet=UTF-8'
//         },
//         body: <String, String>{
//           'email': user.email,
//           'name': user.name,
//           'password': user.password
//         });
//     print(res.body);
//     Navigator.pushReplacement(context,
//         MaterialPageRoute(builder: (BuildContext context) => Navbar()));
//   }

// =======
// >>>>>>> 69dacb306e4a5c560cca10659bc8c176becb69d7
//   bool; isHiddenPassword = true;
//   String userId = '';
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   List<Login> _destinations = <Login>[];
//   @override
//   void initState() {
//     super.initState();
//     // _populateDestinations();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Future<List<Login>> _fetchAllDestinations() async {
//       final response =
//           await http.post("https://wcare.herokuapp.com/api/v1/auth/register",
//               headers: <String, String>{
//                 'Content-Type': 'application/json; charset=UTF-8',
//               },
//               body: jsonEncode(<String, String>{
//                 'email': emailController.text,
//                 'password': passwordController.text,
//                 'name': nameController.text,
//               }));
//       print(emailController.text + " EMAIL");
//       print(passwordController.text + " PASSWORD");
//       if (response.statusCode == 201) {
//         final List<dynamic> result = jsonDecode(response.body);
//         return result.map((item) => Login.fromJson(item)).toList();
//       } else {
//         throw Exception("Failed to register");
//       }
//     }

//     void _populateDestinations() async {
//       try {
//         final destinations = await _fetchAllDestinations();
//         setState(() {
//           _destinations = destinations;
//           print(_destinations);
//           Navigator.pushReplacement(
//               context, MaterialPageRoute(builder: (context) => SignIn()));
//         });
//       } catch (Exception) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: const Text('Failed to Sign In'),
//           duration: const Duration(seconds: 1),
//         ));
//       }
//     }

//     return Scaffold(
//       body: Container(
//         color: Color(0xFFA7D7C5),
//         alignment: Alignment.center,
//         child: Stack(children: [
//           Center(
//               child: SingleChildScrollView(
//             child: Form(
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
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'PTSerifCaption'),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     SizedBox(
//                       height: 320,
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
//                                   horizontal: 20,
//                                 ),
//                                 padding: EdgeInsets.all(0),
//                                 child: Container(
//                                   height: 30,
//                                   width: 250,
//                                   child: TextFormField(
//                                       controller: TextEditingController(
//                                           text: user.email),
//                                       onChanged: (value) {
//                                         user.name = value;
//                                       },
//                                       validator: (value) {
//                                         if (value!.isEmpty) {
//                                           return 'Enter something';
//                                         }
//                                         return null;
//                                       },
//                                       decoration: InputDecoration(
//                                           suffixIcon: Icon(Icons.person),
//                                           labelText: "Username",
//                                           hintText: 'Enter Username',
//                                           labelStyle: TextStyle(
//                                               fontFamily: 'PTSerifCaption',
//                                               fontSize: 14),
//                                           enabledBorder: OutlineInputBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(25),
//                                               // ignore: prefer_const_constructors
//                                               borderSide: BorderSide(
//                                                 color: Colors.grey,
//                                                 width: 2.0,
//                                               )),
//                                           focusedBorder: OutlineInputBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(25),
//                                               // ignore: prefer_const_constructors
//                                               borderSide: BorderSide(
//                                                   color: Colors.black,
//                                                   width: 1))),
//                                       keyboardType: TextInputType.name),
//                                 ),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(25)),
//                                 margin: EdgeInsets.symmetric(
//                                   vertical: 5,
//                                   horizontal: 20,
//                                 ),
//                                 padding: EdgeInsets.all(0),
//                                 height: 30,
//                                 width: 250,
//                                 child: TextFormField(
//                                     controller:
//                                         TextEditingController(text: user.email),
//                                     onChanged: (value) {
//                                       user.email = value;
//                                     },
//                                     validator: (value) {
//                                       if (value!.isEmpty) {
//                                         return 'Enter something';
//                                       } else if (RegExp(
//                                               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                           .hasMatch(value)) {
//                                         return null;
//                                       } else {
//                                         return 'Enter valid email';
//                                       }
//                                     },
//                                     decoration: InputDecoration(
//                                         suffixIcon: Icon(Icons.mail),
//                                         labelText: "E-mail",
//                                         hintText: 'Enter Email',
//                                         labelStyle: TextStyle(
//                                             fontFamily: 'PTSerifCaption',
//                                             fontSize: 14),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(25),
//                                             // ignore: prefer_const_constructors
//                                             borderSide: BorderSide(
//                                               color: Colors.grey,
//                                               width: 2.0,
//                                             )),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(25),
//                                             // ignore: prefer_const_constructors
//                                             borderSide: BorderSide(
//                                                 color: Colors.black,
//                                                 width: 1.0))),
//                                     keyboardType: TextInputType.emailAddress),
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(25)),
//                                 margin: EdgeInsets.symmetric(
//                                   vertical: 5,
//                                   horizontal: 20,
//                                 ),
//                                 padding: EdgeInsets.all(0),
//                                 height: 30,
//                                 width: 250,
//                                 child: TextFormField(
//                                     controller:
//                                         TextEditingController(text: user.email),
//                                     onChanged: (value) {
//                                       user.password = value;
//                                     },
//                                     validator: (value) {
//                                       if (value!.isEmpty) {
//                                         return 'Enter something';
//                                       }
//                                       return null;
//                                     },
//                                     obscureText: isHiddenPassword,
//                                     decoration: InputDecoration(
//                                         suffixIcon: InkWell(
//                                           onTap: _togglePasswordView,
//                                           child: Icon(Icons.visibility),
//                                         ),
//                                         labelText: "Password",
//                                         hintText: "8 Letter",
//                                         labelStyle: TextStyle(
//                                             fontFamily: 'PTSerifCaption',
//                                             fontSize: 14),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(25),
//                                             // ignore: prefer_const_constructors
//                                             borderSide: BorderSide(
//                                               color: Colors.grey,
//                                               width: 2.0,
//                                             )),
//                                         focusedBorder: OutlineInputBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(25),
//                                           // ignore: prefer_const_constructors
//                                           borderSide: BorderSide(
//                                               color: Colors.black, width: 1.0),
//                                         )),
//                                     keyboardType: TextInputType.text),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               FlatButton(
//                                 onPressed: () {
//                                   if (_formKey.currentState!.validate()) {
//                                     save();
//                                   } else {
//                                     print("Failed");
//                                   }
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(50)),
//                                 // ignore: prefer_const_constructors
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: 10, vertical: 5),
//                                 color: Colors.white,
//                                 child: Text(
//                                   'Create',
//                                   style: TextStyle(
//                                       fontFamily: 'PTSerifCaption',
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16),
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
//                                               SignIn()));
//                                 },
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(50)),
//                                 padding: EdgeInsets.symmetric(
//                                     vertical: 0, horizontal: 0),
//                                 color: Colors.transparent,
//                                 child: Text(
//                                   'Have Account? SignIn',
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
//                       height: 10,
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
