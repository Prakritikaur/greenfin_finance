import 'package:flutter/material.dart';

class notificationsettingscreen  extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'title': 'Reminder!',
      'message': 'Set up your automatic savings to meet your savings goal...',
      'time': '17:00 - April 24',
    },
    {
      'title': 'New update',
      'message': 'Set up your automatic savings to meet your savings goal...',
      'time': '17:00 - April 24',
    },
    {
      'title': 'Transactions',
      'message': 'A new transaction has been registered ',
      'time': '17:00 - April 24',
    },
    {
      'title': 'Reminder',
      'message': 'set up your automatic saving to meet your saving goal',
      'time': '17:00 - April 24',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationTile(
            title: notifications[index]['title']!,
            message: notifications[index]['message']!,
            time: notifications[index]['time']!,
          );
        },
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String message;
  final String time;

  const NotificationTile({
    required this.title,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.notifications,
        color: Colors.blue,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(message),
      trailing: Text(time, style: TextStyle(color: Colors.grey)),
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      onTap: () {
        // Handle tap on notification
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(title),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
