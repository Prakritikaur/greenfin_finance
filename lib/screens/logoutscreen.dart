import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logoutscreen extends StatefulWidget {
  const logoutscreen({super.key});

  @override
  State<logoutscreen> createState() => _logoutscreenState();
}

class _logoutscreenState extends State<logoutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF084427),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(child: Text('logoutscreen')),
    );
  }
}
