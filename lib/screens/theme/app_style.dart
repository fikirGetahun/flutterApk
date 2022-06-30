import 'package:flutter/material.dart';
// import 'package:codingmutant_s_application1/core/app_export.dart';

import '../utils/color_constant.dart';
import '../utils/math_utils.dart';

class AppStyle {
  static TextStyle textstyleinterextrabold151 =
      textstyleinterregular15.copyWith(
    color: ColorConstant.yellow800,
  );

  static TextStyle textstyleinterextrabold15 = textstyleinterregular15.copyWith(
    color: ColorConstant.teal700,
  );

  static TextStyle textstyleintersemibold141 =
      textstyleintersemibold14.copyWith(
    color: ColorConstant.black90068,
  );

  static TextStyle textstyleregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleistokwebbold24 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Istok Web',
    fontWeight: FontWeight.w700,
  );

  static TextStyle textstyleinterregular201 = textstyleintersemibold20.copyWith(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      20,
    ),
  );

  static TextStyle textstyleinterregular151 = textstyleinterregular15.copyWith(
    color: ColorConstant.lightBlue600,
  );

  static TextStyle textstyleregular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleinterregular20 = textstyleinterregular15.copyWith(
    fontSize: getFontSize(
      20,
    ),
  );

  static TextStyle textstyleintersemibold14 = TextStyle(
    color: ColorConstant.gray801,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleintersemibold20 = textstyleinterregular20.copyWith(
    color: ColorConstant.red70066,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleinterregular15 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleistokwebregular15 = TextStyle(
    color: ColorConstant.gray8007c,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Istok Web',
    fontWeight: FontWeight.w400,
  );
}
