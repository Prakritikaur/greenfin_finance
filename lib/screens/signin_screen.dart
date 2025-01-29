import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/signup_screen.dart';
import 'package:update_greenfin/theme/theme.dart';
import 'package:update_greenfin/widgets/bottomnavbar.dart';
import '../widgets/custom_scaffold.dart';
import 'package:icons_plus/icons_plus.dart';

// ignore: camel_case_types
class signinscreen extends StatefulWidget {
  const signinscreen({super.key});

  @override
  State<signinscreen> createState() => _signinscreenState();
}

// ignore: camel_case_types
class _signinscreenState extends State<signinscreen> {
  final _formSignInKey= GlobalKey<FormState>();
  bool rememberPassword = true;
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
                    Text("Welcome Back!",
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
                        label: const Text('Password'),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: rememberPassword, onChanged: (bool?value){
                              setState(() {
                                rememberPassword=value!;
                
                              });
                            },
                              activeColor:lightColorScheme.primary,
                            ),
                            const Text("Remember me",
                              style: TextStyle(
                                color: Colors.black45,
                
                              ),),
                          ],
                        ),
                        GestureDetector(
                          child: Text('Forget Password?',
                            style:TextStyle(
                              fontWeight: FontWeight.bold,
                              color: lightColorScheme.primary,
                            ) ,),
                        )
                      ],
                    ),
                    const SizedBox(height: 40,),
                    SizedBox(
                      width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formSignInKey.currentState!.validate() &&
                                rememberPassword) {
                              //_formSignInKey.currentState!.validate(): This ensures the form associated with _formSignInKey passes validation rules (e.g., input fields meet required criteria).
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processing Data'),
                                ),
                              );
                              // Navigate to the home screen after a short delay
                              Future.delayed(const Duration(seconds: 2),(){
                                Navigator.push(context, MaterialPageRoute(builder: (e)=>const bottomnavbar()));
                              });

                            } else if (!rememberPassword) {
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
                        const Text("Don't have an account? ",
                        style: TextStyle(
                            color: Colors.black45,
                        ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (e)=>const signupscreen(),),);
                          },
                          child: Text("Sign up ",
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
