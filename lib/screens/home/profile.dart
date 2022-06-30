import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login/login.dart';
import '../utils/math_utils.dart';
import '../login/google.dart';


// GoogleSignIn googleSignin = GoogleSignIn(scopes: <String>['email']);

//    GoogleSignInAccount? CurrentUser;
//   googleSignin.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
//   setState(() {
//     CurrentUser = account;
//   });
//  });
class HomePage2 extends StatefulWidget {
  final String? test;
  final String? Log;

  const HomePage2({ this.test, this.Log});

  @override
  homePageState createState() => homePageState();
}

class homePageState extends State<HomePage2> {
  // Future googleLogout() async {
  //   await googleSignin.disconnect();
    
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => login()));
  // }

  Widget build(BuildContext context) {
    // var name = json.decode(widget.test!);
 
    return SafeArea(
        child: Container(
      height: size.height,
      width: size.width,
      child: Column(children: [
        Center(
          child: Column(children: [
            // Text('NAME: ${name['user']['first_name']}'),
            Text(widget.test!),
            Center(
              child: Text('You are now loged in!!'),
            ),
            ElevatedButton(
                onPressed: () async{
                 await googleHandlex.handleSignOut();
                //  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text('Log Out'))
          ]),
        )
      ]),
    ));
  }
}
