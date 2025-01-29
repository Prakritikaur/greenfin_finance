import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class securityscreen extends StatefulWidget {
  const securityscreen({super.key});

  @override
  State<securityscreen> createState() => _securityscreenState();
}

class _securityscreenState extends State<securityscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF084427),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Center(child: Text('helpsupportscreen ')),
    );
  }
}
