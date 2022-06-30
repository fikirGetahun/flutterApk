// import 'package:flutter/material.dart';

// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert' show json, jsonDecode;
// import 'package:provider/provider.dart';

// import '../../provider/userProvider.dart';
// import 'package:kin_music/screens/utils/math_utils.dart';

// Widget loginPage(context) {
//   GoogleSignInAccount? USER;

//   if (USER != null) {
//     return loginHandler(context);
//   }

//   return SafeArea(
//       child: Scaffold(
//     body: Container(
//       color: Color(0xffEEEEEE),
//       width: size.width,
//       height: size.height,
//       // height: double.infinity,
//       child: SingleChildScrollView(
//           child: Container(
//               child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(
//               top: getVerticalSize(110),
//             ),
//             child: Column(children: [
//               Center(
//                   child: Column(
//                 children: [
//                   Text('K I N',
//                       style: TextStyle(
//                           color: Color.fromARGB(248, 22, 21, 20),
//                           fontSize: getFontSize(20))),
//                   SizedBox(height: getVerticalSize(15)),
//                   Text('Stream your music all day!',
//                       style: TextStyle(
//                           fontSize: getFontSize(15),
//                           color: Color.fromARGB(234, 221, 119, 2))),
//                   SizedBox(height: getVerticalSize(20)),
//                   Image.asset(
//                     'assets/images/img_vecteezyca2.png',
//                     height: getVerticalSize(170),
//                     fit: BoxFit.fill,
//                   ),
//                   SizedBox(
//                     height: getVerticalSize(25),
//                   ),
//                   Padding(
//                       padding: EdgeInsets.only(
//                         left: getHorizontalSize(70),
//                         right: getHorizontalSize(70),
//                       ),
//                       child: Column(
//                         children: [
//                           TextField(
//                             controller: username,
//                             decoration: InputDecoration(
//                                 border: UnderlineInputBorder(),
//                                 fillColor: Color.fromARGB(248, 216, 126, 9),
//                                 labelText: 'Enter your username',
//                                 labelStyle: TextStyle(
//                                     fontSize: getFontSize(15),
//                                     color: Color.fromARGB(248, 22, 21, 20)),
//                                 hintText: 'username',
//                                 prefixIcon: Icon(
//                                   Icons.email,
//                                   color: Color.fromARGB(234, 221, 119, 2),
//                                 )),
//                           ),
//                           TextField(
//                             controller: password,
//                             decoration: InputDecoration(
//                                 border: UnderlineInputBorder(),
//                                 fillColor: Color.fromARGB(248, 22, 21, 20),
//                                 labelText: 'Enter your Password',
//                                 labelStyle: TextStyle(
//                                     fontSize: getFontSize(15),
//                                     color: Color.fromARGB(248, 22, 21, 20)),
//                                 hintText: 'Password',
//                                 prefixIcon: Icon(
//                                   Icons.lock,
//                                   color: Color.fromARGB(234, 221, 119, 2),
//                                 )),
//                           ),
//                           Consumer<userProvider>(
//                               builder: (context, value, child) {
//                             if (value.isLoading == true) {
//                               return Center(
//                                   child: Column(
//                                 children: [
//                                   ElevatedButton(
//                                     onPressed: () {},
//                                     style: ButtonStyle(
//                                         backgroundColor:
//                                             MaterialStateProperty.all(
//                                                 Color.fromARGB(
//                                                     234, 221, 119, 2))),
//                                     child: Text('Login'),
//                                   ),
//                                   Stack(
//                                     alignment: Alignment.center,
//                                     children: [CircularProgressIndicator()],
//                                   )
//                                 ],
//                               ));
//                             } else {
//                               return ElevatedButton(
//                                 onPressed: () async {
//                                   if (value.isLoading == true) {
//                                     Stack(
//                                       alignment: Alignment.center,
//                                       children: [
//                                         Center(
//                                           child: CircularProgressIndicator(),
//                                         )
//                                       ],
//                                     );
//                                   } else {
//                                     var data = {
//                                       "username": username.text,
//                                       "email": username.text,
//                                       "password": password.text
//                                     };
//                                     var ask = await value.login(url, data);
//                                     // var de = json.decode(ask);
//                                     // var dd = json.decode(de);
//                                     //
//                                     ScaffoldMessenger.of(context).showSnackBar(
//                                         SnackBar(content: Text(ask)));
//                                   }
//                                 },
//                                 style: ButtonStyle(
//                                     backgroundColor: MaterialStateProperty.all(
//                                         Color.fromARGB(234, 221, 119, 2))),
//                                 child: Text('Login'),
//                               );
//                             }
//                             // FutureBuilder(
//                             //   future:
//                             //   builder: builder){

//                             // }
//                           }),
//                           TextButton(
//                               onPressed: () async {
//                                 await googleLogout();
//                               },
//                               child: Text('logout')),
//                           Center(
//                             child: Column(children: [
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text('Register Now')),
//                               // Text('Continue with')
//                             ]),
//                           ),
//                           Container(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 TextButton(
//                                     onPressed: () async {
//                                       GoogleHandle();
//                                     },
//                                     child: SvgPicture.asset(
//                                       'assets/images/google.svg',
//                                       height: getVerticalSize(60),
//                                     )),
//                                 SvgPicture.asset('assets/images/fb.svg',
//                                     height: getVerticalSize(60))
//                               ],
//                             ),
//                           )
//                         ],
//                       ))
//                 ],
//               ))
//             ]),
//           )
//         ],
//       ))),
//     ),
//   ));
// }
