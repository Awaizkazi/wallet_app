import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/pages/Tabs/Likes.dart';

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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Interactions',
            style: TextStyle(
                color: Colors.grey[700],
                fontFamily: 'RobotoMono',
                fontStyle: FontStyle.italic),
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
        body: Column(
          children: [
            ButtonsTabBar(
              backgroundColor: Colors.blue[600],
              unselectedBackgroundColor: Colors.white,
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              borderWidth: 1,
              unselectedBorderColor: Colors.blue,
              radius: 100,
              borderColor: Colors.white,
              tabs: [
                // My tabs
                Tab(
                  text: 'Viewed Me',
                ),
                Tab(
                  text: 'Public Survey',
                ),
                Tab(
                  text: 'Likes',
                ),
              ],
            ),
            SizedBox(
              height: 200,
              child: TabBarView(
                children: [
                  Likes(),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
