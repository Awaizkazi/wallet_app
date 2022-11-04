import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/interactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Interactions(),
    );
  }
}


// 42: 13
// https://www.youtube.com/watch?v=Nx3iQwh1Wes&t=1627s