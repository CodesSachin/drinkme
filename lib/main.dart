import 'dart:convert';
import 'dart:ui';
import 'package:drinkme/view/Homepage.dart';
import 'package:drinkme/view/description.dart';
import 'package:flutter/material.dart';
import 'package:drinkme/view/Splash_screen/splash.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
        routes: {
        '/': (context) =>  SplashScreen(),
          '/second' : (context) => homepage(),
          '/third' : (context) => description(),
        },
        // home: SplashScreen()
    );
  }
}

// class User {
//   final String name;
//
//   User(this.name);
// }
