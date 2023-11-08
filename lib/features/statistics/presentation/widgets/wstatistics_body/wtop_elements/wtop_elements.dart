import 'package:flutter/material.dart';

import 'wbar_chart/wbar_chart.dart';
import 'wswitch/wswtich.dart';

class WTopElements extends StatefulWidget {
  const WTopElements({super.key});

  @override
  State<WTopElements> createState() => _WTopElementsState();
}

class _WTopElementsState extends State<WTopElements> {
  List<double> weeklySummary = [
    225,
    160,
    80,
    180,
    160,
    0,
    0,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      color: Colors.white,
      child: Column(
        children: [
          WSwitch(),
          WBarChat(weeklySummary: weeklySummary,),
        ],
      ),
    );
  }
}
