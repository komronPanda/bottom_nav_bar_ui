import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Style extends StyleHook {
  @override
  double get activeIconSize => 40;

  @override
  double get activeIconMargin => 8;

  @override
  double get iconSize => 40;


  @override
  TextStyle textStyle(Color color, String? fontFamily) {
    return TextStyle(
      color: Color(0xFF888B89),
      fontSize: 12,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
    );
  }

}
