import 'package:flutter/material.dart';
import 'package:wcare/pages/activity_page.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/activity',
      routes: {
        '/activity': (context) => Activity(),
      },
    ));
