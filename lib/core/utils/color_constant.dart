import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray50 = fromHex('#f1f1f3');

  static Color red700 = fromHex('#d03329');

  static Color black9003f = fromHex('#3f000000');

  static Color green600 = fromHex('#349765');

  static Color gray50 = fromHex('#fffcf3');

  static Color black900 = fromHex('#000000');

  static Color gray103 = fromHex('#fdf5f4');

  static Color gray104 = fromHex('#f3f3f7');

  static Color blue700 = fromHex('#286cd5');

  static Color amber500 = fromHex('#feb909');

  static Color indigo50 = fromHex('#e5edfa');

  static Color gray900 = fromHex('#0a1c38');

  static Color bluegray100 = fromHex('#cdd0d9');

  static Color gray101 = fromHex('#f2f6fc');

  static Color gray300 = fromHex('#dbdee3');

  static Color gray102 = fromHex('#f2f6fd');

  static Color gray100 = fromHex('#f4fbf7');

  static Color bluegray900 = fromHex('#252830');

  static Color bluegray800 = fromHex('#414753');

  static Color indigo100 = fromHex('#c5c4d8');

  static Color bluegray500 = fromHex('#6f7b8e');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray300 = fromHex('#a1a9b6');

  static Color bluegray101 = fromHex('#d6dae2');

  static Color blue300 = fromHex('#729fe5');

  static Color indigo900 = fromHex('#173f7c');

  static Color gray8002b = fromHex('#2b454545');

  static Color whiteA700 = fromHex('#ffffff');

  static Color bluegray901 = fromHex('#262b35');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
