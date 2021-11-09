import 'dart:js';

import 'package:flutter/material.dart';
import 'package:wcare/pages/activitypage.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/Home',
  routes: {
    '/activity: (context) => ActivityPage(),

  },
));