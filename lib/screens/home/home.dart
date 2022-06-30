import 'dart:convert';

import "package:flutter/material.dart";
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../network/api_service.dart';
import '../../provider/userProvider.dart';
import 'package:provider/provider.dart';





class homex extends StatefulWidget{
  @override 
     

 
  _homeState createState() => _homeState();
}


// Image memes widget
Widget list(BuildContext context){
  // var urix = Uri.parse('https://kinmusic.kinideas.com/user/1') ;
  var urix = Uri.parse('https://jsonplaceholder.typicode.com/todos') ;
  return   SingleChildScrollView(  
    scrollDirection: Axis.vertical,
      child: 
       Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            // Consumer <memeProvider> (builder: ((context, value, _)  {
            //   if(value.isLoading == true){
            //     return Text('Data is loading');
            //   } 
            //     var ask  = value.getMemes(urix);
                
            //     return Text('data gottttttttttttttttttttttttttttttttttttttttttttttt $ask ');
               
            // }))
            FutureBuilder(
              future: getUserApi(urix),
              builder: (context, AsyncSnapshot<dynamic> snapshot) {
                if(!(snapshot.connectionState == ConnectionState.waiting)){
                  if(snapshot.hasData){
                   var  xx = jsonDecode(snapshot.data);
                   var ans = json.decode(xx);

                  
                    return ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder:(context, index) {
                      
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border(),
                                color: Colors.blue[400]
                              ),
                              child: Column(children: <Widget> [
                                Center(child:
                                Row(
                                  children: [
                                    
                                    Text('Title :'),
                                    // Text(' ${ans[index]['username']}', overflow: TextOverflow.clip,)
                                      Text('${ans[index]['title'] }', overflow: TextOverflow.clip,)

                                  ],
                                )
                                ),
                                
                              ]),
                            )
                          ],
                        );
                      },
                    );
                  }else{
                    return Text('${snapshot.error}');
                  }
                 }else{
                   return Text('Waiting for data');
                 }
              } ),
             
  
          ],
        ),
      )
     );
 }


// Video memes widget
Widget welcome(BuildContext context){
  

  return  
  Scaffold(
      body: Center(child: Text('Welcome  ')),
   
  );
}


// GIF memes widget
Widget profile(BuildContext context){
  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos');

  return  
     Scaffold(
      body: Center(child: 
      Column(children: [
        FutureBuilder(
          future: getUserDataApi(url) ,
          builder: (context,  snapshot)   {
              TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
  TextEditingController password= TextEditingController();
            return Container(
              child: Column(children: [
                Padding(padding: EdgeInsets.all(20),
                child: Column(children: [
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
                       Consumer<userProvider>(builder: (context, value, child) {
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
                      return ElevatedButton(onPressed: (){
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
                        }
                      }, child: Text('Edit Profile')
                       );
                       })
                       ]) ,
                )
              ]),
            );
          },
        )
      ],)
      ),
   
  );
}


class _homeState extends State<homex> {
  @override 
      

  
  Widget build(BuildContext context){
    return MaterialApp(
       home: DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home',),
              Tab(text: 'List',),
              Tab(text: 'Profile',)
            ],
          ),
          title: Center(child: Text('Kin', textAlign: TextAlign.center),),
          ),
     
      body:  TabBarView(children: [
         
          welcome(context),
          list(context),
          profile(context)
        ]),
        
      )
         ),
      );
   }
}
  