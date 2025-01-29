import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/splashscreen.dart';

class threesplashscreen extends StatefulWidget {
  const threesplashscreen({super.key});

  @override
  State<threesplashscreen> createState() => _threesplashscreenState();
}

class _threesplashscreenState extends State<threesplashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 800),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (e)=> const splashscreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child:  Center(child:
          Image.asset('assets/😉 3.png'),
          )
      ),
    );
  }
}

