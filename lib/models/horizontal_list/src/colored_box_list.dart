import 'package:flutter/material.dart';

import 'colored_box.dart';

final getColoredBoxList = (Color color) {
  List strengths = <double>[.05];
  final List<MyColoredBox> list = [];
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    list.add(MyColoredBox(
        color: Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    )));
  };
  return list;
};
