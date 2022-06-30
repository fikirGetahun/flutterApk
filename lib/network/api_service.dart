import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../components/essential.dart';

 
final apiUrlx = Uri.parse(apiUrl);


Future<dynamic> getUserApi(apiUrl) async {
  Response res = await get(apiUrl);
  final data = jsonEncode(res.body);
  if (res.statusCode == 200) {
    return data;
  } else {
    return 'error';
  }
}

Future loginApi(apiUrl, data) async {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Access-Control-Allow-Credentials': 'true',
    'Accept': 'application/json'
  };
  data = json.encode(data);
  Response res = await post(apiUrl, headers: headers, body: data);
  if (res.statusCode == 201) {
    var out = res.body;
    return out;
  } else {
    return res.body;
  }
}

Future registerApi(apiUrl, data) async {
  Response res = await post(apiUrl, body: data);
  var out = jsonEncode(res.body);
  return out;
}

Future getUserDataApi(apiUrl) async {
  Response res = await get(
    apiUrl,
  );
  var out = jsonEncode(res.body);
  return out;
}

Future googeAuthApi(token, url) async {
  Map<String, String> headers = {'token': 'token'};
  var dat = {'access_token': token, 'code': ''};
  var data = json.encode(dat);
  Response res = await post(Uri.parse("http://34.140.167.224/rest-auth/google"), headers: headers, body: dat);

  return res.body;
}

Future fbAuthApi(token, apiUrl ) async{
      Map<String,String> headers = {'token': 'token' };
    var dat = {
      'access_token': token,
      'code': ''
    };
    var data = json.encode(dat);
  Response res = await post(apiUrl, 
    // headers: headers,
    body: dat
  );

   
    return res.body; 
  
}