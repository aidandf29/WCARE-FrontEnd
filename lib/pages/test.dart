// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:get/get.dart';
// import 'package:wcare/controller/calc_checkout.dart';
// import 'package:wcare/pages/Item.dart';

// class FoodList extends StatefulWidget {
//   @override
//   _FoodList createState() => _FoodList();
// }

// class _FoodList extends State<FoodList> {
//   List<Item> items = Item.generatedItem;
//   String query = '';
//   final CartController = Get.put(calcCheckout());
//   Timer? debouncer;
//   bool loading = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//             body: Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: items.length,
//                     itemBuilder: (context, index) {
//                       final food = items[index];
//                       return listFood(food);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           );
//   }

  

//   Widget listFood(Item item) {
//     double c_width = MediaQuery.of(context).size.width * 0.4;
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white,
//           boxShadow: kElevationToShadow[1],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 padding: EdgeInsets.only(right:5),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                   child: Image.network(
//                     item.imgUrl,
//                     width: 80,
//                     height: 60,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Container(
//                 width: c_width,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(3),
//                       decoration:BoxDecoration(
//                         border: Border.all(color: Color(0xFFF5C901), width: 2),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Text(
//                         item.type,
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 10,
//                         ),
//                       ),
//                     ),
//                     Text(
//                       item.menuTitle,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     Text(
//                       'Rp. ${item.price}',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Spacer(),
//               IconButton(
//                 onPressed: () {
//                   CartController.addItem(item);
//                 },
//                 icon: Icon(
//                   Icons.add_circle,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }