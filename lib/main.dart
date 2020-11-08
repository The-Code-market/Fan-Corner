import 'package:fan_corner/screen/splashScreen.dart';
import 'package:flutter/material.dart';

import './screen/loginScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fan Corner',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.red,
        canvasColor: Colors.greenAccent,
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Colors.black,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
            ),
            headline1: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (ctx) => SplashScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
      },
    );
  }
}
