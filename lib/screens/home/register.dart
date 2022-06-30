import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kin_music/provider/userProvider.dart';
import 'package:kin_music/screens/home/home.dart';
import 'package:kin_music/screens/login/login.dart';
import 'package:provider/provider.dart';


class register extends StatefulWidget{
  @override 
  _regState createState() => _regState();
}


class _regState extends State<register>{
static String routes = '/reg';
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password= TextEditingController();

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registeration Form'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xffEEEEEE),
          child: Column(
             children: [
              Padding(
                padding:  EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                     height: 400,
                     decoration: BoxDecoration(
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]
                     ),
                     child: Column(
 
                       children: [
                        Center(
                          child:  Text('Fill The Form', style: TextStyle(fontSize: 20))
                        ),
                       TextField(
                         decoration: InputDecoration(
                           labelText: 'Username',
                            focusColor: Colors.amberAccent
                         ),
                         controller: username,
                       ),
                       SizedBox(height: 10,),

                        TextField(
                         decoration: InputDecoration(
                           labelText: 'Email',
                            focusColor: Colors.amberAccent
                         ),
                         controller: email,
                       ),
                       SizedBox(height: 10,),

                        TextField(
                         decoration: InputDecoration(
                           labelText: 'Password',
                            focusColor: Colors.amberAccent
                         ),
                         controller: password,
                       ),
                       SizedBox(height: 10,),
                       Consumer<userProvider>(builder:(context, value, child)  {
                         if(value.isLoading == true){
                               return Container(
                                color: Colors.amberAccent,
                                child: SpinKitFadingCircle(
                                  itemBuilder: (BuildContext context, int index) {
                                    return DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: index.isEven ? Colors.amberAccent : Colors.white,
                                      ),
                                    );
                                  },
                                  size: 35,
                                ),
                              );
                         }
                         return ElevatedButton(onPressed: () async{
                           if(value.isLoading == true){
                               Container(
                                color: Colors.amberAccent,
                                child: SpinKitFadingCircle(
                                  itemBuilder: (BuildContext context, int index) {
                                    return DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: index.isEven ? Colors.amberAccent : Colors.white,
                                      ),
                                    );
                                  },
                                  size: 35,
                                ),
                              );
                           }else{
                             var urlReg = Uri.parse('https://kinmusic.kinideas.com/user/register/');
                             var result = await value.register(urlReg, username.text, email.text, password.text);
                              var zz = jsonDecode(result);
                              var oo = json.decode(zz);
                              if(result == username){
                                
                                //  Text('You are Registerd ${oo['username']}');
                              }else{
                                // Text('noo${oo['username']}');
                              }

                              Text('You are Registerd  ');

                               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Registerd Successfully!!')));

                              Navigator.pushReplacement(
                                context, 
                                MaterialPageRoute(
                                    builder: (context) =>
                                        homex()
                                        ));
                              
                           }
                         } , child: Text('Register'));
                       } )
                     ]),
                  )
                ]),
                )
            ],
          ),
        ),
      ),
    );
  }
}