import 'package:flutter/material.dart';
import 'package:kin_music/screens/utils/color_constant.dart';

import '../utils/math_utils.dart';
// import 'package:codingmutant_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get groupstyleyellow80077cornerradius => BoxDecoration(
        color: ColorConstant.yellow80077,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        border: Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get textstyleistokwebbold24 => BoxDecoration(
        color: ColorConstant.gray800,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        ),
      );
  static BoxDecoration get textstyleinterregular201 => BoxDecoration(
        color: ColorConstant.teal700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        ),
      );
  static BoxDecoration get groupstylewhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get groupstyleyellow8004f => BoxDecoration(
        color: ColorConstant.yellow8004f,
      );
}
