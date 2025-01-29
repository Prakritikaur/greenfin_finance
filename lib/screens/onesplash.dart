import 'dart:async';

import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/twosplash.dart';

class onesplashscreen extends StatefulWidget {
  const onesplashscreen({super.key});

  @override
  State<onesplashscreen> createState() => _onesplashscreenState();
}

class _onesplashscreenState extends State<onesplashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 800),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (e)=> const twosplashscreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child:  Center(child:
          Image.asset('assets/🫤 1.png'),
          )
      ),
    );
  }
}
