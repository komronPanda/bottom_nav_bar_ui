import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Widget getBottomTiles(double value, TitleMeta meta) {
  TextStyle style = TextStyle(
    color:
        value == DateTime.now().weekday ? Color(0xFF37BD6B) : Color(0xFF797979),
    fontSize: 13,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w400,
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = Text('Sun', style: style);
      break;
    case 1:
      text = Text('Mon', style: style);
      break;
    case 2:
      text = Text('Tue', style: style);
      break;
    case 3:
      text = Text('Wed', style: style);
      break;
    case 4:
      text = Text('Thu', style: style);
      break;
    case 5:
      text = Text('Fri', style: style);
      break;
    case 6:
      text = Text('Sat', style: style);
      break;
    default:
      text = Text('', style: style);
      break;
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}

Widget getLeftTiles(double value, TitleMeta meta) {
  Text text = Text(
    '\$ ${value.toInt()}',
    style: TextStyle(
      color: Color(0xFF797979),
      fontSize: 13,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
    ),
  );
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
