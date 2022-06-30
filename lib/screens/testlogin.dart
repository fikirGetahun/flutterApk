// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:kin_music/provider/userProvider.dart';
// import 'package:kin_music/screens/register.dart';
// import 'package:kin_music/screens/theme/app_decoration.dart';
// import 'package:kin_music/screens/theme/app_style.dart';
// import 'package:kin_music/screens/utils/color_constant.dart';
// import 'package:kin_music/screens/utils/math_utils.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import '../components/routText.dart';
// import 'utils/image_constant.dart';

// class login extends StatefulWidget{
//   @override 
//   _loginState createState() => _loginState();
// }


// class _loginState extends State<login>{

//    Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         body: Container(
//           width: size.width,
//           child: SingleChildScrollView(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: ColorConstant.whiteA700,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                         top: getVerticalSize(
//                           103.00,
//                         ),
//                         bottom: getVerticalSize(
//                           110.00,
//                         ),
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Align(
//                             alignment: Alignment.centerRight,
//                             child: Container(
//                               height: getVerticalSize(
//                                 75.00,
//                               ),
//                               width: getHorizontalSize(
//                                 138.50,
//                               ),
//                               margin: EdgeInsets.only(
//                                 left: getHorizontalSize(
//                                   90.00,
//                                 ),
//                                 right: getHorizontalSize(
//                                   90.00,
//                                 ),
//                               ),
//                               child: Stack(
//                                 alignment: Alignment.bottomLeft,
//                                 children: [
//                                   Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Container(
//                                       width: getHorizontalSize(
//                                         31.00,
//                                       ),
//                                       margin: EdgeInsets.only(
//                                         left: getHorizontalSize(
//                                           25.50,
//                                         ),
//                                         right: getHorizontalSize(
//                                           25.50,
//                                         ),
//                                       ),
//                                       child: Text(
//                                         " k i n".tr,
//                                         maxLines: null,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle
//                                             .textstyleinterextrabold15
//                                             .copyWith(
//                                           fontSize: getFontSize(
//                                             15,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: Alignment.bottomLeft,
//                                     child: Padding(
//                                       padding: EdgeInsets.only(
//                                         top: getVerticalSize(
//                                           10.00,
//                                         ),
//                                       ),
//                                       child: Text(
//                                         "msg_stream_your_mus".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle
//                                             .textstyleinterextrabold151
//                                             .copyWith(
//                                           fontSize: getFontSize(
//                                             15,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.centerRight,
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                 left: getHorizontalSize(
//                                   106.00,
//                                 ),
//                                 top: getVerticalSize(
//                                   13.00,
//                                 ),
//                                 right: getHorizontalSize(
//                                   106.00,
//                                 ),
//                               ),
//                               child: Image.asset(
//                                 ImageConstant.imgVecteezycasset,
//                                 height: getVerticalSize(
//                                   167.00,
//                                 ),
//                                 width: getHorizontalSize(
//                                   134.00,
//                                 ),
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Container(
//                               margin: EdgeInsets.only(
//                                 left: getHorizontalSize(
//                                   58.00,
//                                 ),
//                                 top: getVerticalSize(
//                                   24.00,
//                                 ),
//                                 right: getHorizontalSize(
//                                   58.00,
//                                 ),
//                               ),
//                               decoration: BoxDecoration(
//                                 color: ColorConstant.yellow80077,
//                                 borderRadius: BorderRadius.circular(
//                                   getHorizontalSize(
//                                     20.00,
//                                   ),
//                                 ),
//                                 border: Border.all(
//                                   color: ColorConstant.bluegray100,
//                                   width: getHorizontalSize(
//                                     1.00,
//                                   ),
//                                 ),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: getHorizontalSize(
//                                         14.00,
//                                       ),
//                                       top: getVerticalSize(
//                                         12.00,
//                                       ),
//                                       bottom: getVerticalSize(
//                                         13.24,
//                                       ),
//                                     ),
//                                     child: Container(
//                                       height: getVerticalSize(
//                                         12.76,
//                                       ),
//                                       width: getHorizontalSize(
//                                         13.69,
//                                       ),
//                                       child: SvgPicture.asset(
//                                         ImageConstant.imgVector,
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: getHorizontalSize(
//                                         36.31,
//                                       ),
//                                       top: getVerticalSize(
//                                         8.00,
//                                       ),
//                                       right: getHorizontalSize(
//                                         63.00,
//                                       ),
//                                       bottom: getVerticalSize(
//                                         9.00,
//                                       ),
//                                     ),
//                                     child: TextField(
//                                       decoration: InputDecoration(
//                                         hintText:  'Username or Email',
//                                         fillColor:   ColorConstant.yellow800,
//                                       ),
//                                       textAlign: TextAlign.center,
                                       
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Container(
//                               margin: EdgeInsets.only(
//                                 left: getHorizontalSize(
//                                   58.00,
//                                 ),
//                                 top: getVerticalSize(
//                                   7.00,
//                                 ),
//                                 right: getHorizontalSize(
//                                   58.00,
//                                 ),
//                               ),
//                               decoration: BoxDecoration(
//                                 color: ColorConstant.yellow80077,
//                                 borderRadius: BorderRadius.circular(
//                                   getHorizontalSize(
//                                     20.00,
//                                   ),
//                                 ),
//                                 border: Border.all(
//                                   color: ColorConstant.bluegray100,
//                                   width: getHorizontalSize(
//                                     1.00,
//                                   ),
//                                 ),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: getHorizontalSize(
//                                         14.00,
//                                       ),
//                                       top: getVerticalSize(
//                                         10.00,
//                                       ),
//                                       bottom: getVerticalSize(
//                                         12.92,
//                                       ),
//                                     ),
//                                     child: Container(
//                                       height: getVerticalSize(
//                                         15.08,
//                                       ),
//                                       width: getHorizontalSize(
//                                         13.69,
//                                       ),
//                                       child: SvgPicture.asset(
//                                         ImageConstant.imgVector1,
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: getHorizontalSize(
//                                         60.31,
//                                       ),
//                                       top: getVerticalSize(
//                                         10.00,
//                                       ),
//                                       right: getHorizontalSize(
//                                         88.00,
//                                       ),
//                                       bottom: getVerticalSize(
//                                         10.00,
//                                       ),
//                                     ),
//                                     child: Text(
//                                       "password".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.center,
//                                       style: AppStyle.textstyleistokwebregular15
//                                           .copyWith(
//                                         fontSize: getFontSize(
//                                           15,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                 left: getHorizontalSize(
//                                   58.00,
//                                 ),
//                                 top: getVerticalSize(
//                                   15.00,
//                                 ),
//                                 right: getHorizontalSize(
//                                   58.00,
//                                 ),
//                               ),
//                               child: Container(
//                                 alignment: Alignment.center,
//                                 height: getVerticalSize(
//                                   38.00,
//                                 ),
//                                 width: getHorizontalSize(
//                                   156.00,
//                                 ),
//                                 decoration:
//                                     AppDecoration.textstyleistokwebbold24,
//                                 child: Text(
//                                   "login".tr,
//                                   textAlign: TextAlign.center,
//                                   style:
//                                       AppStyle.textstyleistokwebbold24.copyWith(
//                                     fontSize: getFontSize(
//                                       24,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                 left: getHorizontalSize(
//                                   58.00,
//                                 ),
//                                 top: getVerticalSize(
//                                   7.00,
//                                 ),
//                                 right: getHorizontalSize(
//                                   58.00,
//                                 ),
//                               ),
//                               child: Text(
//                                 " sign_up".tr,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style:
//                                     AppStyle.textstyleintersemibold14.copyWith(
//                                   fontSize: getFontSize(
//                                     14,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                 top: getVerticalSize(
//                                   98.32,
//                                 ),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: getHorizontalSize(
//                                         101.12,
//                                       ),
//                                       bottom: getVerticalSize(
//                                         0.12,
//                                       ),
//                                     ),
//                                     child: Container(
//                                       height: getVerticalSize(
//                                         18.56,
//                                       ),
//                                       width: getHorizontalSize(
//                                         16.85,
//                                       ),
//                                       child: SvgPicture.asset(
//                                         ImageConstant.imgVector2,
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: getHorizontalSize(
//                                         4.03,
//                                       ),
//                                       top: getVerticalSize(
//                                         1.68,
//                                       ),
//                                       right: getHorizontalSize(
//                                         110.00,
//                                       ),
//                                     ),
//                                     child: Text(
//                                       "continue with Google".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.textstyleintersemibold141
//                                           .copyWith(
//                                         fontSize: getFontSize(
//                                           14,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                 top: getVerticalSize(
//                                   23.15,
//                                 ),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: getHorizontalSize(
//                                         102.24,
//                                       ),
//                                       bottom: getVerticalSize(
//                                         2.60,
//                                       ),
//                                     ),
//                                     child: Container(
//                                       height: getVerticalSize(
//                                         17.25,
//                                       ),
//                                       width: getHorizontalSize(
//                                         15.67,
//                                       ),
//                                       child: SvgPicture.asset(
//                                         ImageConstant.imgVector3,
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       left: getHorizontalSize(
//                                         5.09,
//                                       ),
//                                       top: getVerticalSize(
//                                         2.85,
//                                       ),
//                                       right: getHorizontalSize(
//                                         113.00,
//                                       ),
//                                     ),
//                                     child: Text(
//                                       " continue with phone".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.textstyleintersemibold141
//                                           .copyWith(
//                                         fontSize: getFontSize(
//                                           14,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
  
// }