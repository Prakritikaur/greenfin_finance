import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/notificationsettingscreen.dart';

class transactionscreen extends StatefulWidget {
  const transactionscreen({super.key});

  @override
  State<transactionscreen> createState() => _transactionscreenState();
}

class _transactionscreenState extends State<transactionscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF084427),
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Transaction",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,

        ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (e)=>notificationsettingscreen()));
           }, icon: Icon(Icons.notifications_active_outlined),),
        ],
      ) ,
      body: Column(
        children: [
          Flexible(
            flex: 4,
            child: Container(
              child:Center(
                  child: Text("add income and expence"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
