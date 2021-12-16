// ignore: dead_code
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:wcare/pages/navbar.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key ? key}) : super(key: key);

  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return buildPaymentDetail(context);
  }

  Widget buildPaymentDetail(context) => Container(
          child: Container(
        // padding: EdgeInsets.all(10),
        alignment: Alignment.topLeft,
        constraints: BoxConstraints(maxWidth: 355),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                width: 380,
                height: 80,
                color: Color(0xFFA7D7C5),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Navbar()));
                      },
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          const Text(
                            "   Status Pembayaran",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'PTSerifCaption',
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ));
}
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     backgroundColor: Color(0xFFA7D7C5),
    //     title: Column(
    //       // ignore: prefer_const_literals_to_create_immutables
    //       children: [
    //         // Row(
    //         IconButton(
    //             onPressed: () {
    //               Navigator.pushReplacement(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (BuildContext context) => Navbar()));
    //             },
    //             icon: Icon(
    //               Icons.arrow_back,
    //               color: Colors.black,
    //             )),
    //         const Text(
    //           'Status Pembayaran',
    //           style: TextStyle(
    //               color: Colors.black,
    //               fontFamily: 'PTSerifCaption',
    //               fontWeight: FontWeight.bold,
    //               fontSize: 16),
    //         ),
    //         // ),
    //       ],
    //     ),
    //   ),
    // );
  

