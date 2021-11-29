import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Advertise testing'),
    );
  }
}

//  Card(
//                         width: 355,
//                         child: Container(
                          
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Row(
//                                 children: [
//                                   Column(
//                                     children: [
//                                       Image.asset(
//                                         'assets/ngadopsi1.png',
//                                         height: 100,
//                                       ),
//                                     ],
//                                   ),
//                                   Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                           margin: EdgeInsets.symmetric(
//                                               horizontal: 10),
//                                           child: Row(
//                                             children: [
//                                               Text("Arabic ShortHair")
//                                             ],
//                                           )),
//                                       Container(
//                                           margin: EdgeInsets.symmetric(
//                                               horizontal: 1),
//                                           child: Row(
//                                             children: [
//                                               Text(
//                                                 "Male",
//                                                 textAlign: TextAlign.left,
//                                               )
//                                             ],
//                                           )),
//                                       Container(
//                                           margin: EdgeInsets.symmetric(
//                                               horizontal: 10),
//                                           child: Row(
//                                             children: [Text("22 Years")],
//                                           )),
//                                       Container(
//                                           margin: EdgeInsets.symmetric(
//                                               horizontal: 10),
//                                           child: Row(
//                                             children: [
//                                               Text("Contact: 085157477606")
//                                             ],
//                                           )),
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       Container(
//                                         margin:
//                                             EdgeInsets.fromLTRB(20, 5, 20, 100),
//                                         child: IconButton(
//                                             onPressed: () {},
//                                             icon: Icon(
//                                               Icons.favorite,
//                                             )),
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),