import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/expencescreen.dart';
import 'package:update_greenfin/screens/incomescreen.dart';
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
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (e)=>incomescreen()));
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_upward,color: Colors.greenAccent,),
                                Text("Income"),
                                Text("\$4,120.00",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.greenAccent,
                                  ),
                                ),

                              ],
                            ),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_downward,color: Colors.red),
                                Text("Expense"),
                                Text("\$1.187.40",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )
                ),
                child:Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Text("Apri"),
                        IconButton(onPressed: (){
                          print("choose the month");
                        },
                            icon: Icon(Icons.calendar_today_rounded)),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.money_sharp),
                        Text("Salary"),

                        //work as vertical divider
                        Container(
                          width: 1.5, // Thin vertical divider
                          height: 20, // Adjust height as needed
                          color: Colors.greenAccent,
                        ),

                        Text("Monthly"),

                        //works as a vertical divider
                        Container(
                          width: 1.5, // Thin vertical divider
                          height: 20, // Adjust height as needed
                          color: Colors.greenAccent,
                        ),

                        Text("\$4,000"),
                      ],
                    )
                  ],
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
