import 'package:flutter/material.dart';

class editprofilescreen extends StatefulWidget {
  const editprofilescreen({super.key});

  @override
  State<editprofilescreen> createState() => _editprofilescreenState();
}

class _editprofilescreenState extends State<editprofilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF084427),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Center(child: Text('editprofilescreen ')),
    );
  }
}
