import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/signin_screen.dart';
import 'package:update_greenfin/screens/signup_screen.dart';
import 'package:update_greenfin/widgets/custom_scaffold.dart';
import 'package:update_greenfin/widgets/welcome_scaffold.dart';

// ignore: camel_case_types
class welcomescreen extends StatefulWidget {
  const welcomescreen({super.key});

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

// ignore: camel_case_types
class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40,
                 ),
                child: Center(
                  child: RichText(
                     textAlign: TextAlign.center,
                      text: const TextSpan(
                          children: [
                            TextSpan(
                                text: 'Welcome Back\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.w800,
                        )
                      ),

                      TextSpan(
                        text: '\nEnter personal details to your employee account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )
                      ),

                    ]
                  )),
            ),
          )),
          const Flexible(
            flex: 1,
              child:Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(child:welcome_scaffold(text:'Sign in',ontap: signinscreen(),color: Colors.transparent,textcolor: Colors.white,), ),
                    Expanded(child:welcome_scaffold(text:'Sign up',ontap: signupscreen(),color: Colors.white,textcolor: Colors.black,), ),
                  ],
                ),
              ) ),

        ],
      ),
    );
  }
}
