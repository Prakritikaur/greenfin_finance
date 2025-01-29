import 'dart:async';

import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/welcome_screen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 800),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (e)=> const welcomescreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child:  Center(child:
          Image.asset('assets/😇 4.png'),
          )
      ),
    );
  }
}
