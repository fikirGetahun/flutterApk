import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kin_music/components/routText.dart';
import 'package:kin_music/screens/home/profile.dart';
import 'package:kin_music/screens/login/google.dart';
import 'package:kin_music/screens/login/login.dart';
import 'package:kin_music/screens/home/register.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../components/mainNav.dart';
import '../../screens/home/home.dart';
import 'package:provider/provider.dart';

import 'provider/userProvider.dart';
import 'provider/Login_provider.dart';

GoogleSignIn googleSignin = GoogleSignIn(scopes: <String>['email']);

void main() {
  runApp(
      ChangeNotifierProvider(create: (_) => LoginProvider(), child: start()));
}

class start extends StatefulWidget {
  @override
  _main_state createState() => _main_state();
}




class _main_state extends State<start> {
  // GoogleSignInAccount? CurrentUser;

  // void initState() {
  //   super.initState();
  //   googleSignin.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
  //     setState(() {
  //       CurrentUser = account;
  //     });
  //   });
  //   googleSignin.signInSilently();
  // }


  Widget build(BuildContext context) {
    // GoogleSignInAccount? User = CurrentUser;
    // if(User == null){
    //   googleSignin.disconnect();
    // }else{
    //      googleSignin.signInSilently();
    // }
    // if(checkLogin()){
    //    Navigator.pushReplacement(
    //                             context,
    //                             MaterialPageRoute(
    //                                 builder: (context) =>
    //                                     HomePage2(test:'You are loged in' ,)
    //                                     ));
    // }else{
    //    Navigator.pushReplacement(
    //                             context,
    //                             MaterialPageRoute(
    //                                 builder: (context) =>
    //                                     login()
    //                                     ));
    // }



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LandingPage.routeName,
      routes: routesx,
    );
  }
}


  checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    if (pref.getString('token') == null) {
      return false;
    } else {
      return true;
    }
  }

class LandingPage extends StatelessWidget {
  static String routeName = "/";

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
         checkLogin().then((success) {
      if (success) {
        Navigator.pushReplacementNamed(
                                context, '/home');
      } else {
        Navigator.pushReplacementNamed(
                                context, '/login');
      }
    });

    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}