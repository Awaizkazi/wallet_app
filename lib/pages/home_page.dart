import 'package:flutter/material.dart';
import 'package:wallet_app/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // appBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  // Plus Button
                  Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Cards
            Container(
              height: 200,
              child: Column(
                children: [
                  ListView(
                    children: [
                      Mycard(),
                      Mycard(),
                      Mycard(),
                      Mycard(),
                    ],
                  ),
                ],
              ),
            ),
            // 3 buttons--> send + Pay + Bills

            // Columns --> stats + transactions
          ],
        ),
      ),
    );
  }
}


// 16: 31 
// https://www.youtube.com/watch?v=Nx3iQwh1Wes&t=704s