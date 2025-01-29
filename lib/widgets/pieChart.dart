import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class piechart extends StatelessWidget {
  const piechart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              value: 40,title: '40%',color: Colors.blue,radius: 50,titleStyle:const TextStyle(color: Colors.white,fontSize: 16),
            ),
            PieChartSectionData(
              value: 30,title: '30%',color: Colors.blue,radius: 50,titleStyle:const TextStyle(color: Colors.white,fontSize: 16),
            ),
            PieChartSectionData(
              value: 20,title: '20%',color: Colors.blue,radius: 50,titleStyle:const TextStyle(color: Colors.white,fontSize: 16),
            ),
            PieChartSectionData(
              value: 10,title: '10%',color: Colors.blue,radius: 50,titleStyle:const TextStyle(color: Colors.white,fontSize: 16),
            ),
          ]
        )
      ),
    );
  }
}
