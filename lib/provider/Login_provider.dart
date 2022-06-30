import 'dart:convert';

import 'package:flutter/material.dart';
import '../network/api_services.dart';
// ignore: depend_on_referenced_packages

import 'package:shared_preferences/shared_preferences.dart';
import '../network/models/users.dart';

import '../components/essential.dart';

final api  =  apiUrl;

class LoginProvider extends ChangeNotifier {
  bool isLoading = false;
  Map user = {"username": '', "password": ''};

  Future login(user) async {
    String apiEndPoint = '/login';
    isLoading = true;
    notifyListeners();
    var result = await logIn(apiEndPoint, user);
    isLoading = false;
    notifyListeners();
    return result;
  }

  Future<bool> isLoggedIn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.getString('token') != null) {
      return true;
    }
    return false;
  }

  Future getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = prefs.getInt('id');
    user["userName"] = prefs.getString('name$id');
    user["email"] = prefs.getString('email$id');
    return user;
  }


  Future Register(  body) async {
    final apiEndPoint = '/registration/';
      isLoading = true;
    notifyListeners();
    var ask = await RegisterApi(apiEndPoint, body);
    isLoading = false;
    notifyListeners();
    return ask;
  }

  logOut() async {
    //await FacebookAuth.i.logOut();
    SharedPreferences pref = await SharedPreferences.getInstance();
    var id = pref.getInt('id');
    pref.remove('token');
    pref.remove('name$id');
    pref.remove('email$id');
  }
}
