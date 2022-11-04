import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/util/my_tab.dart';

class Interactions extends StatefulWidget {
  const Interactions({super.key});

  @override
  State<Interactions> createState() => _InteractionsState();
}

class _InteractionsState extends State<Interactions> {
  List myTabs = [
    // Viewed Me

    // Public Survey

    // Likes
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Interactions',
          style: TextStyle(color: Colors.grey[700]),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 30,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Row(
          children: [
            ButtonsTabBar(
              backgroundColor: Colors.blue[600],
              unselectedBackgroundColor: Colors.white,
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(
                  color: Colors.blue[600], fontWeight: FontWeight.bold),
              borderWidth: 1,
              unselectedBorderColor: Colors.blue,
              radius: 100,
              tabs: [ 
                // My tabs
                MyTab(tabBarText: 'Viewed Me'),
                MyTab(tabBarText: 'Public Survey'),
                MyTab(tabBarText: 'Likes'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //
                  MyTab(tabBarText: 'Viewed Me'),
                  MyTab(tabBarText: 'Public Survey'),
                  MyTab(tabBarText: 'Likes'),
                  //

                  //

                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
