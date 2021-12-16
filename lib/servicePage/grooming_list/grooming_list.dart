import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wcare/controller/controller_cart.dart';
import 'package:wcare/controller/controller_wishlist.dart';
import 'package:wcare/pages/pet_grooming.dart';

// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

import 'package:wcare/servicePage/Item.dart';

class GroomingList extends StatefulWidget {
  @override
  _GroomingList createState() => _GroomingList();
}

class _GroomingList extends State<GroomingList> {
  List<Item> items = Item.generatedItem;
  // String query = '';
  final CartController = Get.put(cartController());
  final WishlistController = Get.put(wishlistController());
  // Timer? debouncer;
  // bool loading = true;
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Pet Grooming");
  @override
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
                        builder: (BuildContext context) => PetGrooming()));
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 15),
            child: Row(
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                if (index > 3 && index < 6) {
                  final food = items[index];
                  return listItem(food);
                } else {
                  final trash = items[index];
                  return Trash(trash);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget Trash(Item item) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    );
  }

  
    Widget listItem(Item item) {
      double cWidth = MediaQuery.of(context).size.width * 0.4;
      return Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: kElevationToShadow[1],
              border: Border.all(
                  color: Color(0XFF5C8D89), width: 2, style: BorderStyle.solid),
            ),
            child: Padding(
              padding: const EdgeInsets.all(9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        item.imgUrl,
                        width: 80,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: cWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Rp. ${item.price}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            primary: Colors.white,
                            side: BorderSide(
                                width: 1.0, color: Color(0XFF74B49B)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {
                            CartController.addItem(item);
                            Navigator.pushReplacementNamed(
                                context, '/itemcheckout');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.assignment_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      WishlistController.addItem(item);
                      Navigator.pushReplacementNamed(context, '/itemwishlist');
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]);
    }
  }

