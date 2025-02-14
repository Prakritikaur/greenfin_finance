import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/expencescreen.dart';
import 'package:update_greenfin/screens/notificationsettingscreen.dart';

class incomescreen extends StatefulWidget {
  const incomescreen({super.key});

  @override
  State<incomescreen> createState() => _incomescreenState();
}

class _incomescreenState extends State<incomescreen> {
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
                child:Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width* 0.9,  // 90% of screen width
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Total Balance"),
                            Text("\$7,783.00",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width*0.42,
                          height:MediaQuery.of(context).size.height*0.15,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(

                            child: Column(
                              children: [
                                Icon(Icons.arrow_upward),
                                Text("Income"),
                                Text("\$4,120.00",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (e)=>expencescreen()));
                          },
                          child: Container(
                            width:MediaQuery.of(context).size.width*0.42,
                            height:MediaQuery.of(context).size.height*0.15,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(

                              child: Column(
                                children: [
                                  Icon(Icons.arrow_downward),
                                  Text("Expense"),
                                  Text("\$1.187.40",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),
          ),
          Flexible(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )
              ),
              child:Center(
                child: Text("add income and expence"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}