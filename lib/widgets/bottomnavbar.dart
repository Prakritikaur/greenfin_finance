import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/analyticsscreen.dart';
import 'package:update_greenfin/screens/homescreen.dart';
import 'package:update_greenfin/screens/profilescreen.dart';
import 'package:update_greenfin/screens/transactionscreen.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child:Scaffold(
          bottomNavigationBar: Container(
            color: Colors.green,
            height: 70,
            child: const TabBar(tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.auto_graph_sharp),text: "Analytics",),
              Tab(icon: Icon(Icons.attach_money),text: "Transcation",),
              Tab(icon: Icon(Icons.group),text: "Profile",),
            ],
                indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
            ),
          ),
          body: TabBarView(children: [
             homeScreen(),
             analyticsscreen(),
             const transactionscreen(),
             const profilescreen(),
          ]),
        )

    );
  }
}

