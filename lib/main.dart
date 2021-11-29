import 'package:flutter/material.dart';

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

void main() => runApp(MaterialApp(
      initialRoute: '/advertise',
      routes: {
        // '/': (context) => Activity(),
        '/activity': (context) => Activity(),
        '/advertise': (context) => Advertise(),
        '/checkout': (context) => Checkout(),
        '/edit_profil': (context) => EditProfil(),
        '/home': (context) => Home(),
        '/paymentdetails': (context) => PaymentDetails(),
        '/modalpayment': (context) => ModalPayment(),
        '/adopt': (context) => PetAdopt(),
        '/breed': (context) => PetBreed(),
        '/grooming': (context) => PetGrooming(),
        '/hotel': (context) => PetHotel(),
        '/sitter': (context) => PetSitter(),
        '/training': (context) => PetTraining(),
        '/petshop': (context) => ProductOnestopPetshop(),
        '/product': (context) => ProductPage(),
        '/profil': (context) => Profil(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/wishlist': (context) => Wishlist(),
        '/searchbar': (context) => Searchbar(),
        '/navbar': (context) => Navbar(),
      },
    ));
