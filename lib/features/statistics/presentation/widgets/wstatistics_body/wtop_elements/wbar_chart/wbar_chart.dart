import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../faker/bar_data.dart';

import 'wget_tiles.dart';

class WBarChat extends StatelessWidget {
  final List weeklySummary;

  const WBarChat({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData barData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tusAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thuAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );

    barData.initializeBarData();
    return Container(
      height: 240,
      padding: EdgeInsets.all(16),
      child: BarChart(
        BarChartData(
          maxY: 300,
          minY: 0,
          borderData: FlBorderData(show: false),
          extraLinesData: ExtraLinesData(
            extraLinesOnTop: true,
            horizontalLines: [
              ///drawing extra lines
              HorizontalLine(y: 300,  dashArray: [6,6], strokeWidth: 0.6,color: Colors.grey[400]),
              HorizontalLine(y: 0,  dashArray: [6,6], strokeWidth: 0.6,color: Colors.grey[400]),
            ],
          ),
          gridData: FlGridData(
            drawHorizontalLine: true,
            drawVerticalLine: false,
          ),
          titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles:  AxisTitles(sideTitles: SideTitles(showTitles: true,reservedSize: 50, getTitlesWidget: getLeftTiles)),
            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTiles)),
          ),
          barGroups: barData.bardData
              .map(
                (e) => BarChartGroupData(
                  x: e.x,
                  barRods: [
                    BarChartRodData(
                      toY: e.y,
                      width: 24,
                      color: e.y <= 0 ? Colors.transparent : e.x == DateTime.now().weekday ? const Color(0xFF37BD6B) : const Color(0xFF797979),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(1),
                        bottomRight: Radius.circular(1),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}


