import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/threesplash.dart';

class twosplashscreen extends StatefulWidget {
  const twosplashscreen({super.key});

  @override
  State<twosplashscreen> createState() => _twosplashscreenState();
}

class _twosplashscreenState extends State<twosplashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 800),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (e)=> const threesplashscreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child:  Center(child:
          Image.asset('assets/😊 2.png'),
          )
      ),
    );
  }
}
