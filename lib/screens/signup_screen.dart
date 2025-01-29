import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/signin_screen.dart';
import 'package:update_greenfin/widgets/custom_scaffold.dart';
import 'package:icons_plus/icons_plus.dart';

import '../theme/theme.dart';

// ignore: camel_case_types
class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

// ignore: camel_case_types
class _signupscreenState extends State<signupscreen> {
  final _formSignInKey= GlobalKey<FormState>();
  bool agreePersonalData = true;
  @override
  Widget build(BuildContext context) {
    return customscaffold(
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
                                label: const Text('Full Name'),
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
                          const SizedBox(height: 20,),

                          Row(
                            children: [
                              Checkbox(value: agreePersonalData, onChanged: (bool?value){
                                setState(() {
                                  agreePersonalData=value!;

                                });
                              },
                                activeColor:lightColorScheme.primary,
                              ),
                              const Text("Personal Data",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45,

                                ),),
                            ],
                          ),
                          const SizedBox(height: 40,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formSignInKey.currentState!.validate() &&
                                    agreePersonalData) {
                                  //_formSignInKey.currentState!.validate(): This ensures the form associated with _formSignInKey passes validation rules (e.g., input fields meet required criteria).
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Processing Data'),
                                    ),
                                  );

                                } else if (!agreePersonalData) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    //The ScaffoldMessenger is used to show a SnackBar (a small popup message) in the app.
                                    const SnackBar(
                                        content: Text(
                                            'Please agree to the processing of personal data')),
                                  );
                                }
                              },
                              child: const Text('Sign up'),
                            ),
                          ),
                          const SizedBox(height: 40,),
                          Row(
                            children: [
                              Expanded(child: Divider(
                                thickness: 1,
                                color: Colors.grey.withOpacity(0.5),
                              )),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal:   10,vertical: 0),
                                child: Text('Sign up with',
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ),
                              Expanded(child: Divider(
                                thickness: 1,
                                color: Colors.grey.withOpacity(0.5),
                              )),
                            ],
                          ),
                          const SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Brand(Brands.facebook),
                              Brand(Brands.twitter),
                              Brand(Brands.google),
                              Brand(Brands.apple_logo),
                              Brand(Brands.github),
                            ],
                          ),
                          const SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Already have an account? ",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (e)=>const signinscreen()),);
                                },
                                child: Text("Sign in ",
                                  style: TextStyle(
                                    color: lightColorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )


                        ],
                      )
                  ),
                ),
              ),)
          ],
        )
    );
  }
}
