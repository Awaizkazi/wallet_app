import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String tabBarText;
  const MyTab({super.key, required this.tabBarText});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        tabBarText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
    );
  }
}
