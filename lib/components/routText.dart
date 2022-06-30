 
import 'package:flutter/material.dart';
import 'package:kin_music/screens/home/home.dart';
import 'package:kin_music/screens/login/login.dart';

import 'package:kin_music/screens/home/register.dart';
import 'package:kin_music/screens/login/signup/content_model.dart';
import 'package:kin_music/screens/login/signup/siginup.dart';
import 'package:kin_music/screens/login/signup/splash_screen.dart';

import '../screens/login/login.dart';


final Map<String, WidgetBuilder> routesx = {
  '/' : (context) => SplashScreen(),

  '/reg' : (context) =>  Signup(),
  '/home': (context) => homex(),
  '/login': (context) => login()
  
  
};  