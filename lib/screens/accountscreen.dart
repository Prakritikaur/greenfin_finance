import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/deleteaccountscreen.dart';
import 'package:update_greenfin/screens/notificationsettingscreen.dart';
import 'package:update_greenfin/screens/passwordsettingsccreen.dart';

class accountscreen extends StatefulWidget {
  const accountscreen({super.key});

  @override
  State<accountscreen> createState() => _accountscreenState();
}

class _accountscreenState extends State<accountscreen> {
  @override
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.notifications_none ),
                const Text('Notification Settings'),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (e)=>const notificationsettingscreen()));
                }, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                const Icon(Icons.password_outlined ),
                const Text('Password Settings'),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (e)=>const passwordsettingscreen()));

                }, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                const Icon(Icons.account_circle_outlined ),
                const Text('Delete Account'),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (e)=>const deleteaccountscreen()));

                 }, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
