import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:update_greenfin/screens/accountscreen.dart';
import 'package:update_greenfin/screens/editscreen.dart';
import 'package:update_greenfin/screens/helpsupportscreen.dart';
import 'package:update_greenfin/screens/security.dart';

class profilescreen extends StatefulWidget {
  const profilescreen({super.key});

  @override
  State<profilescreen> createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF084427),
      body: Column(
        children: [
          const Padding( // Added Header Section
            padding: EdgeInsets.all(60),
            child: Center(
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          CircleAvatar( // Added Avatar Section
            radius: 50, // Adjust size as needed
            backgroundColor: Colors.white,
            child: Image.asset(
              'assets/😇 4.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20,),
          Expanded( // Updated Section to Expand
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (e)=> editscreen()));
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.group),
                            SizedBox(width: 20),
                            Text('Edit Profile',style: TextStyle(fontSize: 30),)
                          ],
                        ),
                      ),
                  
                  
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (e)=>const accountscreen()));
                        },
                        child:const Row(
                          children: [
                            Icon(Icons.account_circle_outlined),
                            SizedBox(width: 20),
                  
                            Text('Account',style: TextStyle(fontSize: 30),)
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (e)=>  securityscreen()));
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.security_sharp),
                            SizedBox(width: 20),
                  
                            Text('Security',style: TextStyle(fontSize: 30),)
                          ],
                        ),
                      ),
                  
                      const Row(
                        children: [
                          Icon(Icons.dark_mode),
                          SizedBox(width: 20),
                  
                          Text('Theme ',style: TextStyle(fontSize: 30),)
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (e)=>const helpsupportscreen()));
                        },
                        child:const Row(
                          children: [
                            Icon(Icons.help),
                            SizedBox(width: 20),
                  
                            Text('Help and Support',style: TextStyle(fontSize: 30),)
                          ],
                        ),
                      ),


                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Confirm Logout"),
                                content: const Text("Are you sure you want to leave the app?"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Close the dialog
                                    },
                                    child: const Text("Cancel"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // Perform logout action
                                      Navigator.of(context).pop(); // Close the dialog
                                      SystemNavigator.pop(); // Exit the app
                                    },
                                    child: const Text("Logout"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.logout),
                            SizedBox(width: 20),
                            Text('Logout', style: TextStyle(fontSize: 30)),
                          ],
                        ),
                      ),
                  
                  
                    ],
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );



  }
}
