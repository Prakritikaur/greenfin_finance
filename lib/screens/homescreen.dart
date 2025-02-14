import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/notificationsettingscreen.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF084427),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Greenfin', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (e)=>notificationsettingscreen()));
          }, icon: Icon(Icons.notifications_active_outlined)),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting
            Text(
              'Hello, User!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF004D40)),
            ),
            SizedBox(height: 10),

            // Green Box: Total Balance & Expenses
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF084427),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance: ₹50,000',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Total Expense: ₹10,000',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Scrollable Daily, Weekly, Monthly Overview
            Text(
              'Spending Summary',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF004D40)),
            ),
            SizedBox(height: 10),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSummaryCard('Daily', '₹500'),
                  _buildSummaryCard('Weekly', '₹3,500'),
                  _buildSummaryCard('Monthly', '₹15,000'),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Transaction History
            Text(
              'Transaction History',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF004D40)),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildTransactionItem('Groceries', '₹500', 'Jan 30'),
                  _buildTransactionItem('Dining Out', '₹1,200', 'Jan 29'),
                  _buildTransactionItem('Transport', '₹300', 'Jan 28'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(String title, String amount) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF004D40))),
          SizedBox(height: 5),
          Text(amount, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF084427))),
        ],
      ),
    );
  }
/////////////// Transaction history k liye/////////////////////////////
  Widget _buildTransactionItem(String name, String amount, String date) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(name, style: TextStyle(color: Color(0xFF004D40))),
        subtitle: Text(date, style: TextStyle(color: Colors.grey.shade600)),
        trailing: Text(amount, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)),
      ),
    );
  }
}
