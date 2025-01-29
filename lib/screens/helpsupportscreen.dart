import 'package:flutter/material.dart';

class helpsupportscreen extends StatefulWidget {
  const helpsupportscreen({super.key});

  @override
  State<helpsupportscreen> createState() => _helpsupportscreenState();
}

class _helpsupportscreenState extends State<helpsupportscreen> {
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
