import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:drinkme/main.dart';

import '../Homepage.dart';



class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homepage())));
  }

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        children: [
          Expanded(
            child: Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/images/splash.jpg'),
               fit: BoxFit.cover
             ),
           ),
          ),
        ),
        ],
      ),
    );
  }

  // onDoneLoading() async {
  //   Navigator.of(context)
  //       .pushReplacement(MaterialPageRoute(builder: (context) => MyApp()));
  // }
}
