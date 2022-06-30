import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray8007c = fromHex('#7c632b38');

  static Color gray800 = fromHex('#4d4d4d');

  static Color gray801 = fromHex('#632b38');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color lightBlue600 = fromHex('#1499e6');

  static Color yellow8004f = fromHex('#4ffcad17');

  static Color yellow800 = fromHex('#faad17');

  static Color black900 = fromHex('#000000');

  static Color teal700 = fromHex('#009445');

  static Color bluegray400 = fromHex('#888888');

  static Color red70066 = fromHex('#66ed1c24');

  static Color yellow80077 = fromHex('#77fcad17');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90068 = fromHex('#68000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
