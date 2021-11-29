import 'package:flutter/material.dart';
import 'package:wcare/pages/home.dart';
import 'package:wcare/pages/navbar.dart';

class PetTraining extends StatefulWidget {
  @override
  _PetTrainingState createState() => _PetTrainingState();
}

class _PetTrainingState extends State<PetTraining> {
  SimpleDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(
                    fontFamily: 'PTSerifCaption',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Color(0xFFA7D7C5),
              titlePadding: EdgeInsets.all(25),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              actionsPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)));

          actions:
          <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Text('continue'),
              onPressed: () {},
            )
          ];
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
          0xFFA7D7C5,
        ),
        title: Column(
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Navbar()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: Color(0xFF74B49B),
              child: Text(
                'Back',
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
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/trening.png'), fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 90,
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
                                  child: FlatButton(
                                    onPressed: () {
                                      SimpleDialog(context);
                                    },
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
                                  child: FlatButton(
                                    onPressed: () {
                                      SimpleDialog(context);
                                    },
                                    focusColor: Colors.grey,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Image.asset('assets/burung.png'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Bird',
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
                                  child: FlatButton(
                                    onPressed: () {
                                      SimpleDialog(context);
                                    },
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
                                            'Dog',
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
                      height: 90,
                      width: 270,
                      child: Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
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
                                  child: FlatButton(
                                    onPressed: () {},
                                    focusColor: Colors.grey,
                                    splashColor: Colors.grey,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Get the Cat',
                                            textAlign: TextAlign.center,
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
                                  child: FlatButton(
                                    onPressed: () {},
                                    focusColor: Colors.grey,
                                    splashColor: Colors.grey,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Get the Bird',
                                            textAlign: TextAlign.center,
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
                                  child: FlatButton(
                                    onPressed: () {},
                                    focusColor: Colors.grey,
                                    splashColor: Colors.grey,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Get the Dog',
                                            textAlign: TextAlign.center,
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
