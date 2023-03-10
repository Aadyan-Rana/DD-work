import 'package:untitled/contact_screen.dart';
import 'package:untitled/facts_screen.dart';
import 'package:untitled/style_screen.dart';
import 'package:untitled/video_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/contact': (context) => ContactUs(),
        '/style': (context) => Meditation(),
        '/fact': (context) => Data(),
        '/video': (context) => Video(),
      },
    );
  }
}
