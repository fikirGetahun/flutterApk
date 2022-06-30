import 'dart:async';

import 'package:flutter/material.dart';
import './slider.dart';
//import 'package:kin_music_app/main.dart';

//import 'package:kin_music_app/screens/login_signup/login_signup_body.dart';
import 'login_screen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>Onbording()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 24, 22, 22),
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 17, 17, 17)),
                  new Color(0xffF2861E)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/logo.png"),
            ),
          )
        ],
      ),
    );
  }
}
