import 'package:flutter/material.dart';
import 'package:wcare/pages/navbar.dart';

class Advertise extends StatefulWidget {
  late final String id;
  Advertise({required this.id});
  @override
  _AdvertiseState createState() => _AdvertiseState();
}

class _AdvertiseState extends State<Advertise> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("");
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
      backgroundColor: Color(0xFF8B7CAB),
      body: Container(
        child: Center(
            child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/kucinggede.png',
              ),
            ),
            SizedBox(
                height: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
