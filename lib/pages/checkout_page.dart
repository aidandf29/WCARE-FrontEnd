// import 'dart:async';
// import 'dart:collection';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:wcare/controller/calc_checkout.dart';
// import 'package:wcare/pages/Item.dart';
// import 'package:wcare/pages/navbar.dart';
// import 'package:wcare/pages/assets.dart';

// import 'Item.dart';

// // ignore: dead_code
// class Checkout extends StatefulWidget {
//   final calcCheckout controller = Get.put(calcCheckout());

  

//   Checkout({Key? key}) : super(key: key);
//   @override
//   _CheckoutState createState() => _CheckoutState();
// }

// class _CheckoutState extends State<Checkout> {
//   final items = ['Pick Up Rp.0', 'Sameday Rp. 15.000', 'Nextday Rp. 10.000'];
//   String? value;

//   final methods = [
//     'Mandiri Transfer (012345678)',
//     'BCA Transfer (876543210)',
//     'Gopay (085778248437)'
//   ];
//   String? value2;

  

  

//   DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
//         value: item,
//         child: Text(
//           item,
//           style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
//         ),
//       );

//   DropdownMenuItem<String> buildMenuItem2(String method) => DropdownMenuItem(
//         value: method,
//         child: Text(
//           method,
//           style: TextStyle(fontWeight: FontWeight.normal, fontSize: 9),
//         ),
//       );

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Color(0xFFA7D7C5),
//           title: const Text(
//             'Checkout Page',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: 'PTSerifCaption',
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16),
//           ),
//           // ),
//         ),
//         body: Stack(
//           children: [
//             ListView(
//               padding: const EdgeInsets.fromLTRB(
//                 1.0,
//                 6.0,
//                 16.0,
//                 16.0,
//               ),
              
//               children: [
//                 const SizedBox(height: 30.0),
                

//                 // OrderListItem(
//                 //     controller:controller,
//                 //     item:controller.items.keys.toList()[index],
//                 //     qty:controller.items.values.toList()[index],
//                 //     index: index
//                 //   ),
//                 // ),


//         //         SizedBox(
//         // height: 400,
//         // child: ListView.builder(
//         //   itemBuilder: (BuildContext context, int index) {
//         //     // ignore: prefer_const_constructors
//         //     return OrderListItem(
//         //       controller: ,
//         //     );
//         //   }
//         // ),),


//                 const SizedBox(height: 20.0),
//                 _buildDivider(),
//                 const SizedBox(height: 20.0),
//                 Row(
//                   children: [
//                     const SizedBox(width: 20.0),
//                     Text(
//                       "Payment Method",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                     ),
//                     const SizedBox(width: 20.0),
//                   ],
//                 ),
//                 Container(
//                   width: 280,
//                   margin: new EdgeInsets.only(left: 20.0),
//                   padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(color: Color(0xFF74B49B), width: 1),
//                   ),
//                   child: DropdownButtonHideUnderline(
//                     child: DropdownButton<String>(
//                       value: value2,
//                       iconSize: 24,
//                       icon: Icon(Icons.arrow_drop_down, color: Colors.black),
//                       isExpanded: true,
//                       items: methods.map(buildMenuItem2).toList(),
//                       onChanged: (value2) =>
//                           setState(() => this.value2 = value2),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20.0),
//                 _buildDivider(),
//                 const SizedBox(height: 10.0),
//                 Row(
//                   children: [
//                     const SizedBox(width: 20.0),
//                     Text(
//                       "Delivery",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                     ),
//                     const SizedBox(width: 20.0),
//                   ],
//                 ),
//                 Container(
//                   width: 280,
//                   margin: new EdgeInsets.only(left: 20.0),
//                   padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(color: Color(0xFF74B49B), width: 1),
//                   ),
//                   child: DropdownButtonHideUnderline(
//                     child: DropdownButton<String>(
//                       value: value,
//                       iconSize: 24,
//                       icon: Icon(Icons.arrow_drop_down, color: Colors.black),
//                       isExpanded: true,
//                       items: items.map(buildMenuItem).toList(),
//                       onChanged: (value) => setState(() => this.value = value),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20.0),
//                 _buildDivider(),
//                 const SizedBox(height: 10.0),
//                 Row(
//                   children: [
//                     const SizedBox(width: 40.0),
//                     Text(
//                       "Total",
//                     ),
//                     Spacer(),
//                     Text(
//                       'Rp',
//                     ),
//                     const SizedBox(width: 20.0),
//                   ],
//                 ),
//                 const SizedBox(height: 10.0),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 32.0, vertical: 8.0),
//                   child: RaisedButton(
//                     padding: const EdgeInsets.all(16.0),
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15.0)),
//                     color: Color(0xFFA7D7C5),
//                     child: Text(
//                       "Confirm",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18.0,
//                       ),
//                     ),
//                     onPressed: () {},
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ));
//   }

//   Container _buildDivider() {
//     return Container(
//       height: 2.0,
//       width: double.maxFinite,
//       decoration: BoxDecoration(
//         // color: Colors.transparent,
//         borderRadius: BorderRadius.circular(50.0),
//       ),
//     );
//   }
// }


//   Widget listItem(Item item) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Row(
//         children: [
//           Container(
//             width: 100,
//             height: 100,
//             clipBehavior: Clip.antiAlias,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(14.0),
//             ),
//             child: item.imgUrl != null
//                 ? Image.network(
//                     item.imgUrl,
//                     fit: BoxFit.cover,
//                   )
//                 : null,
//           ),
//           const SizedBox(width: 20.0),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   item.name,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 10.0),
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.grey,
//                       width: 1.0,
//                     ),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   height: 40.0,
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         iconSize: 18.0,
//                         padding: const EdgeInsets.all(2.0),
//                         icon: Icon(Icons.remove),
//                         onPressed: () {
//                           controller.removeItem(item);
//                         },
//                       ),
//                       Text(
//                         '${qty}',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18.0,
//                         ),
//                       ),
//                       IconButton(
//                         iconSize: 18.0,
//                         padding: const EdgeInsets.all(2.0),
//                         icon: Icon(Icons.add),
//                         onPressed: () {
//                           controller.addItem(item);
//                         },
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(width: 10.0),
//           Text(
//             "\Rp.${item.price * qty}",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }
