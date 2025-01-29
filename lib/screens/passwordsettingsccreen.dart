import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class passwordsettingscreen extends StatefulWidget {
  const passwordsettingscreen({super.key});

  @override
  State<passwordsettingscreen> createState() => _passwordsettingscreenState();
}

class _passwordsettingscreenState extends State<passwordsettingscreen> {
  final _formSignInKey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF084427),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Setting',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white
          ),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            /////////////////////////////////////////////////////////////action kro didi//////////////////////////////////////////////////////////
            print("Notification button pressed");
          }, icon: const Icon(Icons.notifications_active_outlined))

        ],

      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )
        ),
        child: Column(
          children: [
            const Expanded(
                flex: 1,
                child: SizedBox(height: 50,)),
            Expanded(
              flex: 6,
              child:  Container(
                padding: const EdgeInsets.fromLTRB(25, 50, 25, 50),
                decoration: const BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )
                ),
                child: SingleChildScrollView(
                  child: Form(
                      key:_formSignInKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Get Started!",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              color: lightColorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Please enter Name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                label: const Text('Current Password'),
                                hintText:'Enter  your Name',
                                hintStyle: const TextStyle(
                                  color: Colors.black26,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black12,),
                                  borderRadius: BorderRadius.circular(10),

                                )
                            ),
                          ),

                          const SizedBox(height: 20,),
                          TextFormField(
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Please enter Email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                label: const Text('Email'),
                                hintText:'Enter  email',
                                hintStyle: const TextStyle(
                                  color: Colors.black26,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black12,),
                                  borderRadius: BorderRadius.circular(10),

                                )
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return 'Please enter Password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                label: const Text('Create New Password'),
                                hintText:'Enter  Password',
                                hintStyle: const TextStyle(
                                  color: Colors.black26,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black12,),
                                  borderRadius: BorderRadius.circular(10),

                                )
                            ),
                          ),


                          

                        ],
                      )
                  ),
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
