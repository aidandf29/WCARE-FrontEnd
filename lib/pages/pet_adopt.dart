import 'package:flutter/material.dart';
import 'package:wcare/pages/home.dart';
import 'package:wcare/pages/navbar.dart';
import 'package:wcare/pages/searchbar.dart';

class PetAdopt extends StatefulWidget {
  @override
  _PetAdoptState createState() => _PetAdoptState();
}

class _PetAdoptState extends State<PetAdopt> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Search");
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
                        builder: (BuildContext context) => Navbar()));
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
        backgroundColor: Color(0xFFD3A500),
        body: Container(
          child: GridView.count(
            crossAxisCount: 1,
            children: [
              SizedBox(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/ngadopsi1.png',
                                height: 100,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [Text("Arabic ShortHair")],
                                  )),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Male",
                                        textAlign: TextAlign.left,
                                      )
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [Text("22 Years")],
                                  )),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [Text("Contact: 085157477606")],
                                  )),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 5, 20, 100),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
