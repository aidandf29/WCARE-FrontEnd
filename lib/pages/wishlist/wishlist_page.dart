import 'package:flutter/material.dart';
import 'package:wcare/pages/wishlist/wishlist_item.dart';
import 'package:wcare/pages/navbar.dart';

class ItemWishlist extends StatefulWidget {
  late final String id;
  ItemWishlist({required this.id});

  @override
  State<ItemWishlist> createState() => _ItemWishlistState();
}

class _ItemWishlistState extends State<ItemWishlist> {
  // const ItemWishlist({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFA7D7C5),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 25, 0, 20),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Navbar(id: widget.id)));
                            },
                            icon: Icon(Icons.arrow_back)),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(Icons.add_shopping_cart),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              'Wishlist',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 0, 20),
                child: Container(
                  child: Text(
                    'Wishlist',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              WishlistItem(),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 160,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
