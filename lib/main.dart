import 'package:flutter/material.dart';
import 'package:wcare/pages/checkout/checkout_page.dart';
import 'package:wcare/pages/wishlist/wishlist_page.dart';
import 'package:wcare/servicePage/grooming_list/grooming_list.dart';
import 'package:wcare/servicePage/petshop_list/petshop_list.dart';

//import pages
import 'package:wcare/pages/activity_page.dart';
import 'package:wcare/pages/advertise_page.dart';
import 'package:wcare/pages/checkout_page.dart';
import 'package:wcare/pages/edit_profil.dart';
import 'package:wcare/pages/home.dart';
import 'package:wcare/pages/modal_payment.dart';
import 'package:wcare/pages/payment_details.dart';
import 'package:wcare/pages/pet_adopt.dart';
import 'package:wcare/pages/pet_breed.dart';
import 'package:wcare/pages/pet_grooming.dart';
import 'package:wcare/pages/pet_hotel.dart';
import 'package:wcare/pages/pet_sitter.dart';
import 'package:wcare/pages/pet_training.dart';
import 'package:wcare/pages/product_onestop_petshop.dart';
import 'package:wcare/pages/product_page.dart';
import 'package:wcare/pages/profil.dart';
import 'package:wcare/pages/signin.dart';
import 'package:wcare/pages/signup.dart';
import 'package:wcare/pages/wishlist.dart';
import 'package:wcare/pages/searchbar.dart';
import 'package:wcare/pages/navbar.dart';
import 'package:wcare/servicePage/sitter_list/sitter_list.dart';
import 'package:wcare/servicePage/training_list/training_list.dart';

import 'servicePage/hotel_list/hotel_list.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/signin',
      routes: {
        // '/': (context) => Activity(),
        // '/activity': (context) => Activity(),
        // '/advertise': (context) => Advertise(),
        // '/checkout': (context) => Checkout(),
        // '/edit_profil': (context) => EditProfil(),
        // '/home': (context) => Home(),
        // '/paymentdetails': (context) => PaymentDetails(),
        // '/modalpayment': (context) => ModalPayment(),
        // '/adopt': (context) => PetAdopt(),
        // '/breed': (context) => PetBreed(),
        // '/grooming': (context) => PetGrooming(),
        // '/hotel': (context) => PetHotel(),
        // '/sitter': (context) => PetSitter(),
        // '/training': (context) => PetTraining(),
        // '/petshop': (context) => ProductOnestopPetshop(),
        // '/product': (context) => ProductPage(),
        '/profil': (context) => Profil(
              id: '',
            ),
        '/signin': (context) => SignIn(),
        // '/signup': (context) => SignUp(),
        // '/wishlist': (context) => Wishlist(),
        // '/searchbar': (context) => Searchbar(),
        // '/navbar': (context) => Navbar(),
        // '/hotellist': (context) => HotelList(),
        // '/groominglist': (context) => GroomingList(),
        // '/sitterlist': (context) => SitterList(),
        // '/traininglist': (context) => TrainingList(),
        // '/itemlist': (context) => ItemList(),
        // '/itemcheckout': (context) => ItemCheckout(),
        // '/itemwishlist': (context) => ItemWishlist(),
      },
    ));

class Main extends StatefulWidget {
  late String id;

  Main({required this.id});

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  String userId = "";

  @override
  void initState() {
    super.initState();
    userId = widget.id;
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
