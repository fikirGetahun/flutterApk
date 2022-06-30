// // import 'package:flutter/material.dart';


// // class mainNav extends StatefulWidget{
// //   @override 
// //   _mainNav createState() => _mainNav();
// // }

// // class _mainNav extends State<mainNav>{
// // int _selectedIndex = 0;
// //   List<Widget> pages   = [
// //       Text(
// //       'Index 0: Home',
// //      ),
// //     Text(
// //       'Index 1: Business',
// //      ),
// //     Text(
// //       'Index 2: School',
// //      ),
// //   ];
  
// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }


// //   Widget build(BuildContext context){
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Center(child: pages.elementAt(_selectedIndex)),
// //         bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.business),
// //             label: 'Business',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.school),
// //             label: 'School',
// //           ),
// //         ],
// //         currentIndex: _selectedIndex,
// //         selectedItemColor: Colors.amber[800],
// //         onTap: _onItemTapped,
// //       ),
// //       ),
// //     );
// //   }
// // }




// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import '../screens/home/home.dart';


// class mainNav extends StatefulWidget{
//   @override 
//   _mainNav createState() => _mainNav();
// }

// class _mainNav extends State<mainNav>{

//   int currentPage = 0;

//   List<Widget>  pages = [
//     meme(),
//     const Text('Motivations here'),
//     const Text('Make meme here'),
//     const Text('Chat here')
//   ];

//   void navigateTo(int index){
//     setState(()=>{
//       currentPage = index
//     });
//   }
  
// Widget build(BuildContext context){
//   return  
//      Scaffold(
//       body: Center(child: pages.elementAt(currentPage) ),
//       bottomNavigationBar: BottomNavigationBar(
//         unselectedItemColor: Color.fromARGB(160, 190, 20, 20),
//         showUnselectedLabels: true,
//         type: BottomNavigationBarType.fixed,        
//         items: const <BottomNavigationBarItem>  [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Meme'
//             ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.wallet_membership_outlined),
//             label: 'Motivation'
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.create),
//             label: 'Mmaker'
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat_bubble_outline),
//             label: 'Chat'

//           )
//         ],
                
//         currentIndex: currentPage,
//         onTap: navigateTo,
//         selectedItemColor: Colors.amber[800],
        
//       ),
//     );
  
// }

// }