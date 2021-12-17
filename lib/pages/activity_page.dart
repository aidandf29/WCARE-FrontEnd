// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wcare/pages/navbar.dart';

class Activity extends StatefulWidget {
  late final String id;
  Activity({required this.id});
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("History");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA7D7C5),
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Navbar(id: widget.id)));
              },
              icon: Icon(Icons.arrow_back)),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.cancel);
                    this.cusSearchBar = TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Search Pet"),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    );
                  } else {
                    this.cusIcon = Icon(Icons.search);
                    this.cusSearchBar = Text("search");
                  }
                });
              },
              icon: cusIcon,
            ),
          ],
          title: cusSearchBar,
        ),
        backgroundColor: Color(0xFF7CABA7),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: ListTile(
                    title: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: ClipRRect(
                              child: Image.asset(
                                'assets/sisir1.png',
                              ),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [Text('Sisir Bulu')],
                              ),
                              Row(
                                children: [Text('Rp. 19.999')],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete)),
                                ],
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
