// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:kin_music/provider/Login_provider.dart';
import 'package:kin_music/screens/login/login3.dart';
import 'package:kin_music/screens/utils/math_utils.dart';
import 'package:provider/provider.dart';
// import 'package:kin_music/screens/signup/login_screen.dart';

//import 'package:kin_music_app/signup_screen.dart';

// Future<Album> createAlbum(data) async {
//     data = json.encode(data);
//   final response = await http.post(
//     Uri.parse('http://34.79.92.74:8444/rest-auth/registration/'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body:data );
  
 

//   if (response.statusCode == 201) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     var token = json.decode(response.body)['token'];
//           builder: (context, snapshot) {
       
//           Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => login(),
//                     ),
//                   );
                
          
//         } ;
//     // var name = json.decode(response.body)['user']['username'];
//     // var email = json.decode(response.body)['user']['email'];
//     // var id = json.decode(response.body)['user']['password1'];
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//           builder: (context, snapshot) {
        
//           Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => login(),
//                     ),
//                   );
                
          
//         } ;
//     // then throw an exception.
//     throw Exception('Failed to create user');
//   }
// }

// class Album {
//   final int id;

//   final String name;
//   final String email;
//   final String password1;
//   final String password2;
//   const Album(
//       {required this.id,
//       required this.name,
//       required this.email,
//       required this.password1,
//       required this.password2});
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       id: json['id'],
//       name: json['username'],
//       email: json['email'],
//       password1: json['password1'],
//       password2: json['password2'],
//     );
//   }
// } 

var response;  // this is a response state to be set

 

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() {
    return _SignupState();
  }
}

class _SignupState extends State<Signup> {
  final TextEditingController _controller = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();
  // Future<Album>? _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create user ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 10, 9, 9),
        body: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: buildColumn(),
        )),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        Container(
          // height: getVerticalSize(200),
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(90)),
            color: const Color.fromARGB(255, 22, 21, 21),
            gradient: LinearGradient(
              colors: [
                (const Color.fromARGB(255, 19, 18, 18)),
                new Color(0xffF2861E)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: getVerticalSize(90),
                  width: 90,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.bottomRight,
                child: const Text(
                  "create account ",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          )),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
          // padding: const EdgeInsets.only(left: 20, right: 20),
          height: getVerticalSize(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              const BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            controller: name,
            cursorColor: const Color(0xffF5591F),
            decoration: const InputDecoration(
              icon: Icon(
                Icons.person,
                color: const Color(0xffF5591F),
              ),
              hintText: "user name",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          // padding: const EdgeInsets.only(left: 20, right: 20),
          height: getVerticalSize(54),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              const BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: const Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            controller: email,
            cursorColor: const Color(0xffF5591F),
            decoration: const InputDecoration(
              icon: const Icon(
                Icons.email,
                color: Color(0xffF5591F),
              ),
              hintText: "Email",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          // padding: const EdgeInsets.only(left: 20, right: 20),
          height: getVerticalSize(54),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xffEEEEEE),
            boxShadow: [
              const BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 100,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            controller: password1,
            // obscureText: true,
            cursorColor: const Color(0xffF5591F),
            decoration: const InputDecoration(
              focusColor: const Color(0xffF5591F),
              icon: const Icon(
                Icons.vpn_key,
                color: const Color(0xffF5591F),
              ),
              hintText: "Enter Password",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          // padding: const EdgeInsets.only(left: 20, right: 20),
          height: getVerticalSize(54),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xffEEEEEE),
            boxShadow: [
              const BoxShadow(
                  offset: const Offset(0, 20),
                  blurRadius: 100,
                  color: const Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            controller: password2,
            // obscureText: true,
            cursorColor: const Color(0xffF5591F),
            decoration: const InputDecoration(
              focusColor: Color(0xffF5591F),
              icon: const Icon(
                Icons.vpn_key,
                color: Color(0xffF5591F),
              ),
              hintText: "confirm Password",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Consumer<LoginProvider>(builder: (context, Provider, child) {
            
            
         if(Provider.isLoading){
           return Stack(
             alignment: Alignment.topCenter,
             children: [
               CircularProgressIndicator()
             ],
           );
         }else{
           return Stack();
         }

        },),

       
       Consumer<LoginProvider>(builder: (context, Provider, child) {


         return       GestureDetector(
          onTap: () {},
          child: Container(
              width:size.width ,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(new Color(0xffF5591F)), new Color(0xffF2861E)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: GestureDetector(
                child: ElevatedButton(
                  onPressed: () async{
                    // setState(() {
                    //   _futureAlbum = createAlbum(name.text, email.text,
                    //       password1.text, password2.text);
                    // });
                      var data = {
                                   "username": name.text.toString(),
                                   "email": email.text.toString(),
                                   "password1": password1.text.toString(),
                                   "password2":password2.text.toString(),
                                  }; 
                      var ask = await Provider.Register(json.encode(data));
                      setState((){
                        response = ask;
                      });
                  },
                  child: const Text('Create account'),
                ),
              )),
        );
       },),
       Consumer(builder: (context, value, child) {
         if(response != null){
           return Text(response);
         }else{
           return Stack();
         }
       },),
        // socail media
        // social media login
 
      ],
    );
  }
    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: <Widget>[
    //     TextField(
    //       controller: name,
    //       decoration: const InputDecoration(hintText: 'Enter  user name'),
    //     ),
    //       TextField(
    //       controller: email,
    //       decoration: const InputDecoration(hintText: 'Eenter email'),
    //     ),
    //       TextField(
    //       controller: password1,
    //       decoration: const InputDecoration(hintText: 'Enter password'),
    //     ),
    //       TextField(
    //       controller: password2,
    //       decoration: const InputDecoration(hintText: 'confirm password'),
    //     ),
    //     ElevatedButton(
    //       onPressed: () {
    //         setState(() {
    //           _futureAlbum = createAlbum(name.text,email.text,password1.text,password2.text);
    //         });
    //       },
    //       child: const Text('Create account'),
    //     ),
    //      ElevatedButton(
    //       onPressed: () {
    //         setState(() {
    //           _futureAlbum = createAlbum(name.text,email.text,password1.text,password2.text);
    //         });
    //       },
    //       child: const Text('fetch Data'),
    //     ),
    //   ],
    // );
  }

//   FutureBuilder<Album> buildFutureBuilder() {
//     return FutureBuilder<Album>(
//       future: _futureAlbum,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Container(
//             margin: const EdgeInsets.only(top: 10, bottom: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   snapshot.data!.name,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                       color: Colors.orange),
//                 ),
//                 Text(
//                   snapshot.data!.email,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                       color: Colors.orange),
//                 ),
//                 Text(
//                   snapshot.data!.password1,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                       color: Colors.orange),
//                 ),
//                 Text(
//                   snapshot.data!.password2,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                       color: Colors.orange),
//                 ),
//               ],
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return Text(
//             '${snapshot.error}',
//           );
//         }

//         return const CircularProgressIndicator();
//       },
//     );
//   }
// }

// class home extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String name = ""; //user's response will be assigned to this variable
//   String final_response =
//       ""; //will be displayed on the screen once we get the data from the server
//   final _formkey =
//       GlobalKey<FormState>(); //key created to interact with the form

//   //function to validate and save user form
//   Future<void> _savingData() async {
//     final validation = _formkey.currentState!.validate();
//     if (!validation) {
//       return;
//     }
//     _formkey.currentState!.save();
//   }

//   //function to add border and rounded edges to our form
//   OutlineInputBorder _inputformdeco() {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(20.0),
//       borderSide:
//           BorderSide(width: 1.0, color: Colors.blue, style: BorderStyle.solid),
//     );
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: size.width,
//         height: size.height,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: getVerticalSize(160)),
//             Container(
//               width: size.width,
//               height: size.height,
//               child: Form(
//                 key: _formkey,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Enter your name: ',
//                     enabledBorder: _inputformdeco(),
//                     focusedBorder: _inputformdeco(),
//                   ),
//                   onSaved: (value) {
//                     name =
//                         value!; //getting data from the user form and assigning it to name
//                   },
//                 ),
//               ),
//             ),

//            ElevatedButton(
//               onPressed: () async {
//                 //validating the form and saving it
//                 _savingData();

//                 final response = await http.post(
//                   Uri.parse('http://34.79.92.74:8444/rest-auth/registration/'),
//                   headers: <String, String>{
//                     'Content-Type': 'application/json; charset=UTF-8',
//                   },
//                   body: jsonEncode({
//                     'username': 'name',
//                     'email': 'email',
//                     'password1': 'password',
//                     'password2': 'pas',
//                   }),
//                 );
//               },
//               child: Text('SEND'),
//              ),

//             // FlatButton (
//             //   onPressed: () async {
//             //     //url to send the get request to
//             //     final url = 'http://127.0.0.1:5000/name';

//             //     //getting data from the python server script and assigning it to response
//             //     final response = await http.get('http://34.79.92.74:443/rest-auth/registration/');

//             //     //converting the fetched data from json to key value pair that can be displayed on the screen
//             //     final decoded =
//             //         json.decode(response.body) as Map<String, dynamic>;

//             //     //changing the UI be reassigning the fetched data to final response
//             //     setState(() {
//             //       final_response = decoded['name'];
//             //     });
//             //   },
//             //   child: Text('GET'),
//             //   color: Colors.lightBlue,
//             // ),

//             //displays the data on the screen
//             Text(
//               final_response,
//               style: TextStyle(fontSize: 24),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
