import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../network/api_service.dart';
import '../components/essential.dart';

class userProvider extends ChangeNotifier {
  var isLoading = false;

  var apiUrl = Uri.parse('https://demo.treblle.com/api/v1/articles');

  Future getUsers(apiUrl) async {
    isLoading = true;
    notifyListeners();
    var get = await getUserApi(apiUrl);
    isLoading = false;
    notifyListeners();
    return get;
  }

  Future login(apiUrl, data) async {
    isLoading = true;
    notifyListeners();
    var ask = await loginApi(apiUrl, data);
    isLoading = false;
    ask = json.decode(ask);
    if (ask['token']) {
      SharedPreferences local = await SharedPreferences.getInstance();
      await local.setString('token', ask.token);
      await local.setString('name', ask.first_name);
    }
    notifyListeners();
    return ask;
  }

  Future<dynamic> register(apiUrl, username, email, password) async {
    isLoading = true;
    notifyListeners();
    var data = {
      'username': '$username',
      'email': '$email',
      'password': '$password'
    };
    var ask = await registerApi(apiUrl, data);
    isLoading = false;
    notifyListeners();
    return ask;
  }

  Future getUserData(apiUrl) async {
    isLoading = true;
    notifyListeners();
    var ask = await getUserDataApi(apiUrl);
    notifyListeners();
    return ask;
  }

  Future googleAuth(token) async {
    isLoading = true;
    notifyListeners();
    var ask = await googeAuthApi(
        token, apiUrl); //'${Important().apiUrl}/rest-auth/google/'
    isLoading = false;

    notifyListeners();
    return ask;
  }
}
