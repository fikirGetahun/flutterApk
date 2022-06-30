import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kin_music/screens/utils/math_utils.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' show json;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

GoogleSignIn googleSignin = GoogleSignIn(
  scopes: <String>[
    'email'
  ]
);

FirebaseAuth? authx;
bool isLogedIn = false;
var CurrentUserLoged =false;


class login extends StatefulWidget{
  @override 

  loginState createState() => loginState();

}


class loginState extends State<login>{
  GoogleSignInAccount? CurrentUser;


  @override 
  void initState() {
    super.initState();
    // googleSignin.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
    //   setState(() {
    //     CurrentUser = account;
    //   });
    //  });
    // googleSignin.signInSilently();
    initApp();

    // checkIfUserIsSignedIn();
  }

  void initApp() async{
     FirebaseApp kinIdea = await Firebase.initializeApp();
    authx = FirebaseAuth.instanceFor(app: kinIdea);
  }

Future<User> GoogleHandle() async {
  final userr;
 
 bool isLogedIn = await googleSignin.isSignedIn();
  
  setState(() {
    CurrentUserLoged = isLogedIn;
  });
    if (CurrentUserLoged) {
      // if so, return the current user
      userr = authx?.currentUser;
   }   else {
      final GoogleSignInAccount? googleUser = 
         await googleSignin.signIn();     
          final GoogleSignInAuthentication googleAuth =  await googleUser!.authentication;      // get the credentials to (access / id token)
      // to sign in via Firebase Authentication 
      final AuthCredential credential =
         GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken
         );      userr = (await authx?.signInWithCredential(credential))?.user;
      isLogedIn= await googleSignin.isSignedIn();
      setState(() {
         CurrentUserLoged = isLogedIn;
      });
   }
 
   return userr;
}


 Widget loginPage(context){

    GoogleSignInAccount? USER = CurrentUser;


  if(USER == null){ 
   return SafeArea(child: 
        Scaffold(
          body: Container(
          //   decoration:  BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment(0.8, 1),
          //   colors: <Color>[
          //     Color.fromARGB(255, 83, 92, 0),
          //     Color.fromARGB(255, 223, 110, 5),
          //     Color.fromARGB(255, 133, 135, 1),
          //     Color.fromARGB(255, 80, 172, 37),
          //     Color(0xffca485c),
          //     Color(0xffe16b5c),
          //     Color(0xfff39060),
          //     Color(0xffffb56b),
          //   ], // Gradient from https://learnui.design/tools/gradient-generator.html
          //   tileMode: TileMode.mirror,
          // )
          // ),
            color: Color(0xffEEEEEE),
            width: size.width,
            height: size.height,
            // height: double.infinity,
            child: SingleChildScrollView(
              child: Container(
              
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding: 
                      EdgeInsets.only(
                        top: getVerticalSize( 110 ),
                      ),
                      child: Column(children: [
                        Center(
                          child: Column(
                          children: [
                          Text('K I N', style:  
                          TextStyle(color: Color.fromARGB(248, 22, 21, 20), fontSize: getFontSize(20))),
                          SizedBox(height: getVerticalSize(15)),
                          Text('Stream your music all day!', style:TextStyle(fontSize: getFontSize(15), color: Color.fromARGB(234, 221, 119, 2) )),
                          SizedBox(height: getVerticalSize(20)),
                          Image.asset('assets/images/img_vecteezyca2.png',
                              height: getVerticalSize(170),
                              fit: BoxFit.fill,
                                ),
                          SizedBox(height: getVerticalSize(25),),
                          Padding(padding: EdgeInsets.only(
                            left: getHorizontalSize(70),
                            right: getHorizontalSize(70),
                          ),
                          child: Column(children: [
                            TextField(
                             
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              fillColor: Color.fromARGB(248, 216, 126, 9),
                              labelText: 'Enter your username',
                              labelStyle: TextStyle(
                                fontSize: getFontSize(15),
                                color: Color.fromARGB(248, 22, 21, 20)
                                 ),
                              hintText: 'username',
                              prefixIcon: Icon(Icons.email, color: Color.fromARGB(234, 221, 119, 2),)
                               
                            ),
                          ),
                          TextField(
                             
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              fillColor: Color.fromARGB(248, 22, 21, 20),
                              labelText: 'Enter your Password',
                              labelStyle: TextStyle(
                                fontSize: getFontSize(15),
                                color: Color.fromARGB(248, 22, 21, 20) 
                                 ),
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock, color: Color.fromARGB(234, 221, 119, 2) ,)
                               
                            ),
                          ),
                          Center(child: ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all(Color.fromARGB(234, 221, 119, 2))  
                            ),
                            child: Text('Login')
                            ),    
                            ),
                          Center(
                            child: Column(children: [
                              TextButton( onPressed: (){}, child: Text('Register Now')),
                              // Text('Continue with')
                            ]),
                          ),
                          Container(child: 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              TextButton(onPressed: (){
                                GoogleHandle();
                              }, child: SvgPicture.asset('assets/images/gmail.svg', height: getVerticalSize(60),)),
                              SvgPicture.asset('assets/images/fb.svg', height: getVerticalSize(60))
                            ],),)
                          ],
                          
                          )
                          )
                          
                            ],
                          )
                        )
                      ]),
                    )
                ],)
              )
               ),
          ),
        )
    );
 }else{


   return Scaffold(
     appBar: AppBar(),
     body: Column(children: [
       Text('you are home'),
       Text('${googleSignin.scopes.map((e) =>  e)}'),
       Text( '${USER.hashCode}'),
       ElevatedButton(onPressed: (){
         googleLogout();
       }, child: Text('Log OUT'))
     ]),
   ); //navigate to home with the 

 }
 }


 Future googleLogout() async{
   try{
   googleSignin.disconnect();

   }
   catch (error){
     print(error);
   }
 }

  Widget build(BuildContext context){


 
      return loginPage(context);
     
     
  }
}