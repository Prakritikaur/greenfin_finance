import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class linechart extends StatelessWidget {
  const linechart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LineChart(
        LineChartData(
          lineBarsData:[
            LineChartBarData(
              spots: [
                const FlSpot(0,1),
                const FlSpot(1,2),
                const FlSpot(2,1.5),
                const FlSpot(3,3),
                const FlSpot(4,2.5),
              ],
              isCurved: true,
              color: Colors.blue,
              barWidth: 4,
            )
          ]
        )
      ),
    );
  }
}
