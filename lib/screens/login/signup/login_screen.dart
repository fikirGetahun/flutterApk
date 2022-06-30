// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:kin_music/screens/signup/splash_screen.dart';


// class LoginScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => StartState();
// }

// class StartState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//       return initWidget();
//   }

//   initWidget() {
//   TextEditingController username = TextEditingController();
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 10, 9, 9),
//         body: SingleChildScrollView(
//             child: Column(
//           children: [
//             Container(
//               height: 200,
//               decoration: BoxDecoration(
//                borderRadius:
//                     BorderRadius.only(bottomLeft: Radius.circular(90)),
//                 color: Color.fromARGB(255, 20, 20, 19),
//                 gradient: LinearGradient(
//                   colors: [
//                     (Color.fromARGB(255, 110, 78, 67)),
//                     Color.fromARGB(255, 29, 28, 26)
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//               child: Center(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(top: 50),
//                     child: Image.asset(
//                       "assets/images/logo.png",
//                       height: 90,
//                       width: 90,
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(right: 20, top: 20),
//                     alignment: Alignment.bottomRight,
//                     child: Text(
//                       "Login",
//                       style: TextStyle(fontSize: 20, color: Colors.white),
//                     ),
//                   )
//                 ],
//               )),
//             ),
//             Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
//               padding: EdgeInsets.only(left: 20, right: 20),
//               height: 54,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Colors.grey[200],
//                 boxShadow: [
//                   BoxShadow(
//                       offset: Offset(0, 10),
//                       blurRadius: 50,
//                       color: Color(0xffEEEEEE)),
//                 ],
//               ),
//               child: TextField(
//                 controller: username,
                
//                    cursorColor: Color(0xffF5591F),
//                 decoration: InputDecoration(
//                    labelText:"user name or email",
//                   icon: Icon(
//                     Icons.email,
//                     color: Color(0xffF5591F),
//                   ),
//                   hintText: "Enter  username or Email",
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
//               padding: EdgeInsets.only(left: 20, right: 20),
//               height: 54,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: Color(0xffEEEEEE),
//                 boxShadow: [
//                   BoxShadow(
//                       offset: Offset(0, 20),
//                       blurRadius: 100,
//                       color: Color(0xffEEEEEE)),
//                 ],
//               ),
//               child: TextField(
//                  obscureText: true,
//                 cursorColor: Color(0xffF5591F),
//                 decoration: InputDecoration(
//                    labelText:"password",
//                   focusColor: Color(0xffF5591F),
//                   icon: Icon(
//                     Icons.vpn_key,
//                     color: Color(0xffF5591F),
//                   ),
//                   hintText: "Enter Password",
//                   enabledBorder: InputBorder.none,
//                   focusedBorder: InputBorder.none,
//                 ),
//               ),
//             ),
//             Container (
//               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//               alignment: Alignment.centerRight,
//               child: GestureDetector(
//                 onTap: () {
//                   // Write Click Listener Code Here
//                 },
//                 child: Text(
//                   "Forget Password?",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 // Write Click Listener Code Here.
//                  Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => LoginScreen()),
                        
//                       );

//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 margin: EdgeInsets.only(left: 20, right: 20, top: 10),
//                 padding: EdgeInsets.only(left: 20, right: 20),
//                 height: 54,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       colors: [(const Color(0xffF5591F)), const Color(0xffF2861E)],
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight),
//                   borderRadius: BorderRadius.circular(50),
//                   color: Colors.grey[200],
//                   boxShadow: [
//                     BoxShadow(
//                         offset: Offset(0, 10),
//                         blurRadius: 50,
//                         color: Color(0xffEEEEEE)),
//                   ],
//                 ),
//                 child:  Text(
//                   "LOGIN",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             // social media login
//             const Divider(
//                 thickness: 5, // thickness of the line
//                 indent: 20, // empty space to the leading edge of divider.
//                 endIndent: 20, // empty space to the trailing edge of the divider.
//                 color: Color.fromARGB(255, 219, 201, 201), // The color to use when painting the line.
//                 height: 20, // The divider's height extent.
//               ),
//             Container(
              
//               child: Text(
//                   'Or login with',
//                   textAlign: TextAlign.center,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange),
//                 ),
//             ),
//               Container(
//               margin: EdgeInsets.only(top: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
                
//                 children: [
                  
//                   GestureDetector(
                   

//                     onTap: () {
//                       // Write Tap Code Here.
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>LoginScreen(),
//                           ));
//                             },
//                   ),
                  
//                   GestureDetector(
                   

//                     onTap: () {
//                       // Write Tap Code Here.
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>LoginScreen(),
//                           ));
//                             },
//                   ),
//                    GestureDetector(
                   

//                     onTap: () {
//                       // Write Tap Code Here.
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => LoginScreen(),
//                           ));
//                             },
//                   ),
//                 ],

//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
                
//                 children: [
//                   Text(
//                     "Don't Have Any Account?  ",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   GestureDetector(
//                     child: Text(
//                       "Register Now",
//                       style: TextStyle(color: Color(0xffF5591F)),
//                     ),
//                     onTap: () {
//                       // Write Tap Code Here.
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => SplashScreen(),
//                           ));
//                             },
//                   )
//                 ],
//               ),
//             )
//           ],
//         )));
//   }
// }

// mixin FontAwesomeIcons {
// }
