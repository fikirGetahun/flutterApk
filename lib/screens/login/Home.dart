 

 

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('loged in user'), actions: [
        Container(
            margin: EdgeInsets.only(right: 50),
            alignment: Alignment.center,
            child: IconButton(
                onPressed: () {
                  logOut();
                    // Navigator.of(context).pop();
  Navigator.pushReplacementNamed(context, '/login');
                },
                icon: Icon(Icons.logout, color: Colors.red, size: 30))),
      ]),
      body: Center(
          child: Column(children: [
        //after login
        Image.asset(
          'assets/images/img_vecteezyca2.png',
          height: 170,
          fit: BoxFit.fill,
        ),
        Text(
          'Welcome kinian!',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
        )
      ])),
    );
  }
}

logOut() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  var id = pref.getInt('id');
  pref.remove('token');
  //pref.remove('name$id');
  //pref.remove('email$id');

  
}
