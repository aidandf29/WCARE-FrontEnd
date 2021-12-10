import 'package:flutter/material.dart';
import 'package:wcare/pages/dummy.dart';
import 'package:wcare/pages/navbar.dart';

class ProductOnestopPetshop extends StatefulWidget {
  @override
  _ProductOnestopPetshopState createState() => _ProductOnestopPetshopState();
}

class _ProductOnestopPetshopState extends State<ProductOnestopPetshop> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("One Stop Petshop");
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
        backgroundColor: Color(0xFF7CABA7),
        body: ListView.builder(
            itemCount: Shop.generatedShop.length,
            itemBuilder: (context, index) {
              final item = Shop.generatedShop[index];
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
                              child: Image.network(item.imgUrl),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [Text(item.jenis)],
                              ),
                              Row(
                                children: [Text(item.harga)],
                              ),
                              Row(
                                children: [Text(item.stok)],
                              ),
                              Row(
                                children: [
                                  FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      color: Color(0xFFA7D7C5),
                                      onPressed: () {},
                                      child: Text(
                                        "Checkout",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ))
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
