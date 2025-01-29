import 'package:flutter/material.dart';

class incometrend extends StatelessWidget {
  const incometrend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF084427),
      title: const Text('Income trend',
        style: TextStyle(
            color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Column(
        children: [
          Text('Income Trend'),
          SizedBox(height: 20,),
          Expanded(
            flex: 2,
            child:
          Text('line chat lgana h'),
          ),
          SizedBox(height: 20,),
          Expanded(child: Column(
            children: [
              IncomeMetric(title: 'Total Income', value: "₹30,000"),
              SizedBox(height: 10,),
              IncomeMetric(title: 'Average Income', value: "₹7,500"),
              SizedBox(height: 10,),
              IncomeMetric(title: 'Growth Rate', value: "25%"),
            ],
          ))
        ],
      ),
    );
  }
}
class IncomeMetric extends StatelessWidget {
  const IncomeMetric({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(title,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
        Text(value,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      ],
    );
  }
}

