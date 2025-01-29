import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class budgetanalysis extends StatefulWidget {
  const budgetanalysis({super.key});

  @override
  State<budgetanalysis> createState() => _budgetanalysisState();
}

class _budgetanalysisState extends State<budgetanalysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF084427),
        title: const Text('Budget Analysis',style: TextStyle(color: Colors.white),),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Budget Overview",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const LinearProgressIndicator(
                value: 0.6,
                backgroundColor: Colors.grey,
                color: Colors.greenAccent,
              ),
              const SizedBox(height: 20,),
              const Text('Spending Categories',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const Text('Pie chart lgana h ',),
              const SizedBox(height: 20,),
              const Text('Budget vs Actual',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const Text('Bar chart lagana h',),
              const SizedBox(height: 20,),
              const Text('Upcoming Expenses',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const ListTile(
                title: Text('Internet Bill',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                subtitle: Text('due: 10th Jan'),
                trailing: Text('\$30'),
              ),
              const ListTile(
                title: Text('electricity Bill',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                subtitle: Text('due: 5th Jan'),
                trailing: Text('\$50'),
              ),
              const SizedBox(height: 20,),
              Container(
                child: const Text("You have overspent on entertainment this month.Consider cutting back", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
