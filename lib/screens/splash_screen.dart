import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tride_mobility/constants/colours.dart';
import 'package:tride_mobility/screens/introductory_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Get.toNamed("/introScreen"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              primaryBackground,
              secondaryBackground,
            ],
          )
        ),
        child:Container(
          margin: EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: Image.asset("images/tride_icon.jpeg",alignment: Alignment.center,fit: BoxFit.fill,)),
            ],
          ),
        )
      ),
    );
  }
}
