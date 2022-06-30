import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kin_music/network/api_service.dart';
import 'package:kin_music/screens/home/profile.dart';
import 'package:kin_music/screens/login/Home.dart';
import 'package:kin_music/screens/login/google.dart';
import 'package:kin_music/screens/login/signup/siginup.dart';
import 'package:kin_music/screens/utils/math_utils.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json, jsonDecode, jsonEncode;
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import '../../provider/Login_provider.dart';
import '../../provider/userProvider.dart';
import 'package:http/http.dart';
import './google.dart';
import '../../components/essential.dart';

final urlz = Uri.parse("http://34.140.167.224/rest-auth/google/");
 
// GoogleSignIn googleSignIn = GoogleSignIn(scopes: <String>['email']);

// final FirebaseAuth _auth = FirebaseAuth.instance;


final url1 = Uri.parse('http://34.79.92.74:8444/rest-auth/login/');
 final urlf = Uri.parse('http://34.79.92.74:8444/rest-auth/facebook/');
var  Authz;
 var fbUsers;
var fbtokenM;

var reg = 'reg';

var response= '';

class login extends StatefulWidget {
  @override
  loginState createState() => loginState();
}

class loginState extends State<login> {
  // GoogleSignInAccount? CurrentUser;

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    // googleSignin.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
    //   setState(() {
    //     CurrentUser = account;
    //   });
    //  });
    // googleSignin.signInSilently();
  }

  // void GoogleHandle() async {
  //   var ask = await _
//     var ask = await googleSignin.signIn();
//     var gauth = await ask!.authentication;
// //  var auth = await googleSignin.scopes.map((e) =>  e);
//     var cc = GoogleAuthProvider.credential(
//         accessToken: gauth.accessToken, idToken: gauth.idToken);
// // if(cc.accessToken == null){
// //   setState(){
// //     Authz =  cc.accessToken!;
// // //   }
// //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //                               content: Text('Registerd Successfully!!')));
// // }
//     setState(() {
//       Authz = cc.accessToken as String;
//     });
// // Authz =  cc.accessToken!;
// // if(gauth.accessToken != null || gauth.idToken != null){
// //     return gauth.accessToken;
// // }
// // return cc.accessToken! as String;
  // }
// CircularProgressIndicator()

  Widget loginPage(context) {
    // 

    if (googleHandlex.AuthG != null) {
      return 
  FutureBuilder(
        future:  googeAuthApi(googleHandlex.AuthG , Uri.parse("http://34.140.167.224/rest-auth/google/")),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Stack(
              
              alignment: Alignment.center,
           
              children: [
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
            );
          } else {
            if (snapshot.hasData) {
              //  var xx = jsonDecode(snapshot.data);
           Text(snapshot.data);
                                         
              //  var dd = json.decode(snapshot.data);
              return HomePage2(test: snapshot.data,);
            } else {
              return Text('error');
            }
          }
        },
      );
}
;
    


      if(fbUsers != null){
    return fbLoginWidgit(context);
  }


    return   Scaffold(
      body: Container(
        color: Color(0xffEEEEEE),
        width: size.width,
        height: size.height,
        // height: double.infinity,
        child: SingleChildScrollView(
            child: Container(
                child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(110),
              ),
              child: Column(children: [
                Center(
                    child: Column(
                  children: [
                    Text('K I N',
                        style: TextStyle(
                            color: Color.fromARGB(248, 22, 21, 20),
                            fontSize: getFontSize(20))),
                    SizedBox(height: getVerticalSize(15)),
                    Text('Stream your music all day!',
                        style: TextStyle(
                            fontSize: getFontSize(15),
                            color: Color.fromARGB(234, 221, 119, 2))),
                    SizedBox(height: getVerticalSize(20)),
                    Image.asset(
                      'assets/images/img_vecteezyca2.png',
                      height: getVerticalSize(170),
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: getVerticalSize(25),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(70),
                          right: getHorizontalSize(70),
                        ),
                        child: Column(
                          children: [
                            TextField(
                              controller: username,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  fillColor: Color.fromARGB(248, 216, 126, 9),
                                  labelText: 'Enter your username',
                                  labelStyle: TextStyle(
                                      fontSize: getFontSize(15),
                                      color: Color.fromARGB(248, 22, 21, 20)),
                                  hintText: 'username',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Color.fromARGB(234, 221, 119, 2),
                                  )),
                            ),
                            TextField(
                              controller: password, 
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  fillColor: Color.fromARGB(248, 22, 21, 20),
                                  labelText: 'Enter your Password',
                                  labelStyle: TextStyle(
                                      fontSize: getFontSize(15),
                                      color: Color.fromARGB(248, 22, 21, 20)),
                                  hintText: 'Password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color.fromARGB(234, 221, 119, 2),
                                  )),
                            ),

                            //Login button

                            /*        Container(
                              child: Consumer<userProvider>(
                                  builder: (context, provider, _) {
                                return GestureDetector(
                                  child: const Text('Login'),
                                  onTap: () async {
                                    if (username.text.toString().isNotEmpty) {
                                      var user = {
                                        'username': username.text.toString(),
                                        'password': password.text.toString()
                                      };
                                      var result =
                                          await provider.login(url1, user);
                                      if (result) {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Home()));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text('result'),
                                        ));
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text('Please Fill all Field'),
                                      ));
                                    }
                                  },
                                );
                              }),
                            ),
*/

                            Container(
                              child: Consumer<LoginProvider>(
                                  builder: (context, provider, _) {
                                    // if(response != null){
                                    //   return Text('${response}df');
                                    // }

                                return Column(
                                  children: [
                                    ElevatedButton(
                                  child: const Text('Login'),
                                  onPressed: () async {
                                    if (username.text.toString().isNotEmpty) {
                                      var user = {
                                        "username": username.text.toString(),
                                        "email": username.text.toString(),
                                        "password": password.text.toString()
                                      };

                                    
                                      var result = await provider
                                          .login(user);
                                          setState((){
                                          response = result;
                                          });


                                         
                                      if (result == 'Successfully Logged In') {
                                        Text(result);
                                        Navigator.pushReplacementNamed(context, '/home');
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(result)
                                        ));
                                      //   //  Text(result);
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text('Please Fill all Field'),
                                          
                                      ));
                                    }
                                  },
                                ),
                         
                              // Consumer(builder: (context, value, child) {
                              //   if(response != null){
                              //     return      Text(response);
                              //   }else{
                              //     return Text('');
                              //   }
                              // },),
                              Consumer<LoginProvider>(builder: ((context, value, child) {
                                if(value.isLoading){
                                  return Stack(
                                    children: [
                                      Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    ],
                                  );
                                }else{
                                  return Stack();
                                }
                              }),)
                               
                           
                                  ],
                                );
                                }
                                 
                           
                                
                               
                              ),
                            ),
                            // social media login
                            Center(
                              child: Column(
                                
                                children: [
                                    
                                TextButton(
                                    onPressed: () {
                                      // Signup();
                                      go();
                                    },
                                    child: Text('Register Now')),
                                // Text('Continue with')
                              ]),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      onPressed: () async {
                                          var   AuthzN  = await  googleHandlex.handleSignIn();
                                         setState(()   {
                                           googleHandlex.AuthG = AuthzN;
                                         });
                                       ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content:  Text('dfdf ${Authz}')));
                                     
                                      },
                                      child: SvgPicture.asset(
                                        'assets/images/google.svg',
                                        height: getVerticalSize(60),
                                      )),
                                TextButton(onPressed: () {
                                // check();
                                fbLogin();
                              }, child: SvgPicture.asset('assets/images/fb.svg', height: getVerticalSize(60))),
                              TextButton(onPressed: () {
                                // check();
                                googleLogout();
                              }, child:  Text('Glogout'))
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ))
              ]),
            )
          ],
        ))),
      ),
    );
  }


 

fbLogout() async{
  await FacebookAuth.getInstance();
  await FacebookAuth.instance.logOut();
  // result.logOut();
   fbtokenM = null;
  fbUsers = null;
  setState((){
    fbUsers = null;
    fbtokenM = null;
  });
  
}


go(){
  Navigator.pushNamed(context, '/reg');
}


fbLogin() async{
  final LoginResult result = await FacebookAuth.instance.login(permissions: ['public_profile', 'email', 'pages_show_list', 'pages_messaging', 'pages_manage_metadata']);
  // final acccfb = await FacebookAuth.instance.accessToken;
  // var fbac = acccfb!.toJson();
  if(result.status == LoginStatus.success){
    // fbtokenM = result.accessToken;
   var us = await FacebookAuth.instance.getUserData();
    // fbUsers = us;
    us = json.decode(us.toString());
fbtokenM =  result.accessToken?.token;
    setState((){
  fbUsers = us;
  fbtokenM =  result.accessToken?.token;
  // es = result.accessToken?.expires;
    });

    // return result.accessToken?.token;
    // return fbLoginWidgit(context);

  }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Column(children: [
                                Text('${result.status}dsdf'),
                                Text('${result.message}sfdsdfsdf')
                              ],)
                              )); 
  }

}

Widget fbLoginWidgit(context){
  return Scaffold(
      body: Scaffold(
     body: FutureBuilder(
       future: fbAuthApi(fbtokenM, urlf),
       builder: (context, AsyncSnapshot<dynamic> snapshot)  {
         if(snapshot.connectionState == ConnectionState.waiting){
           return Stack(
              
              alignment: Alignment.center,
           
              children: [
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
            ); 
         }else{
           if(snapshot.hasData){
            //  var xx = jsonDecode(snapshot.data);
            //  var dd = json.decode(xx);
             return Scaffold(
               body: Center(child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                 Text( 'You are loged in'),
                 SelectableText(fbUsers['name'] ),
                //  Text('${es}sdf'),
                    TextButton(onPressed: (){
                                 fbLogout();

                               }, child: Text('logout_fb'))
                //  Text('${fbUsers}')
               ],))
             );
           }else{
             return Text('error');
           }
         }
       },
        ) ,
   ),
  );
}
  // var apiUrl = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');/

  // Widget loginHandler(context) {
  //   return Scaffold(
  //     body: FutureBuilder(
  //       future: googeAuthApi(Authz, urlz),
  //       builder: (context, AsyncSnapshot<dynamic> snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return Stack(
              
  //             alignment: Alignment.center,
           
  //             children: [
  //               Center(
  //                 child: CircularProgressIndicator(),
  //               )
  //             ],
  //           );
  //         } else {
  //           if (snapshot.hasData) {
  //             //  var xx = jsonDecode(snapshot.data);
  //             //  var dd = json.decode(xx);
  //             return goox(snapshot.data);
  //           } else {
  //             return Text('error');
  //           }
  //         }
  //       },
  //     ),
  //   );
  // }

  
   
     

  Future googleLogout() async {
    try {
      googleHandlex.handleSignOut();
      
      
    } catch (error) {
      print(error);
    }
  }

  Widget build(BuildContext context) {
    return loginPage(context);
  }
}

