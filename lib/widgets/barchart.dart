import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class barchart extends StatelessWidget {
  const barchart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarChart(
        BarChartData(
          barGroups: [
            BarChartGroupData(x: 1,barRods: [
              BarChartRodData(toY: 8,color: Colors.blue)
            ]),
            BarChartGroupData(x: 2,barRods: [
              BarChartRodData(toY: 10,color: Colors.blue)
            ]),
            BarChartGroupData(x: 3,barRods: [
              BarChartRodData(toY: 14,color: Colors.blue)
            ]),
            BarChartGroupData(x: 4,barRods: [
              BarChartRodData(toY: 18,color: Colors.blue)
            ]),
          ]
        )
      ),
    );
  }
}
