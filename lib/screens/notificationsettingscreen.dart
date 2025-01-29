import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notificationsettingscreen extends StatefulWidget {
  const notificationsettingscreen({super.key});

  @override
  State<notificationsettingscreen> createState() => _notificationsettingscreenState();
}

class _notificationsettingscreenState extends State<notificationsettingscreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('General Notification'),
              Icon(Icons.switch_access_shortcut),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Sound'),
              Icon(Icons.switch_access_shortcut),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Sound Call'),
              Icon(Icons.switch_access_shortcut),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Vibrate'),
              Icon(Icons.switch_access_shortcut),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Transaction Update'),
              Icon(Icons.switch_access_shortcut),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Expense Reminder'),
              Icon(Icons.switch_access_shortcut),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Budget Notification'),
              Icon(Icons.switch_access_shortcut),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Low Balance Alerts'),
              Icon(Icons.switch_access_shortcut),
            ],
          ),

        ],
      ),

    );
  }
}
