import 'dart:convert';
import 'package:kin_music/network/models/users.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' ;

//C:\Users\H\Desktop\Kuraz\frontend\kinFrontend-master\lib\network\models
import 'package:kin_music/screens/home/profile.dart';
import '../components/essential.dart';

 
// final apiUrl = Uri.parse('${Important().apiUrl}');

Future logIn(apiEndPoint, user) async {
    Map<String,String> headers = {'Content-Type':'application/json' };
  var body = json.encode(user);
  Response response = await  post(
    Uri.parse("$apiUrl""$apiEndPoint/"),
    body: body,
    headers: headers,
  );

  // return response.body;

  if (response.statusCode == 200) {
    var body = json.decode(response.body);
    SharedPreferences prefs = await SharedPreferences.getInstance();

        // var id = body['user']['id'];
        await prefs.setString('token', body['token']);
     


    return "Successfully Logged In";
  } else {
    return 'bad credentials${response.body} ${response.statusCode}';
  }


}


Future RegisterApi(apiEndPoint, body) async{
    Map<String,String> headers = {'Content-Type':'application/json', 'key': 'what' };
  // body = json.encode(body);
  Response res = await  post( Uri.parse("$apiUrl""$apiEndPoint"),
    headers: headers,
    body: body
  
  );

  if(res.statusCode == 201){
     var  item = json.decode(res.body)  ; 
     List<User> userReturn = item.map((value) => User.fromJson(value)).toList();
     return userReturn;
  }else{
    return 'Error ${res.body}';
  }
} 
