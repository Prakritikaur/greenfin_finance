import 'package:flutter/material.dart';

class goalprogreesScreen extends StatelessWidget {
  const goalprogreesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor:const Color(0xFF084427) ,
       title: const Text('Goal Progress',
      style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,
       ),
      ),),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.flag),
              title: Text("Save \$5000"),
              subtitle: Text("Progress: 60%"),
          ),
          ListTile(
            leading: Icon(Icons.nature),
              title: Text("Plant 50 Trees"),
              subtitle: Text("Progress: 30%"),
          ),
          ListTile(
            leading: Icon(Icons.flag),
              title: Text("Save \$5000"),
              subtitle: Text("Progress: 60%"),
          ),
          ListTile(
            leading: Icon(Icons.nature),
              title: Text("Plant 50 Trees"),
              subtitle: Text("Progress: 30%"),
          ),
        ],
      ),
    );
  }
}
