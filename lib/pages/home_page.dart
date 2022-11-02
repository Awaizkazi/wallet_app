import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/util/my_button.dart';
import 'package:wallet_app/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Page Indicator
  final _controller = PageController();
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
              height: 25,
            ),

            // Cards
            Container(
              height: 200,
              child: PageView(
                // Keeps track on which page we are currently on
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Mycard(
                    balance: 5250.20,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.deepPurple[400],
                    cardNumber: 35215687,
                  ),
                  Mycard(
                    balance: 342.24,
                    expiryMonth: 20,
                    expiryYear: 27,
                    color: Colors.blue[400],
                    cardNumber: 982345245,
                  ),
                  Mycard(
                    balance: 420.50,
                    expiryMonth: 12,
                    expiryYear: 25,
                    color: Colors.green[400],
                    cardNumber: 902175632,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            // 3 buttons--> send + Pay + Bills
// Send button
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(
                    buttonText: 'Send',
                    iconImagePath: 'lib/icons/send-money.png'),
                MyButton(
                    buttonText: 'Send',
                    iconImagePath: 'lib/icons/send-money.png'),
                MyButton(
                    buttonText: 'Send',
                    iconImagePath: 'lib/icons/send-money.png'),
              ],
            ),
// Pay button

// Bills Button

            // Columns --> stats + transactions
          ],
        ),
      ),
    );
  }
}

// 16: 31
// https://www.youtube.com/watch?v=Nx3iQwh1Wes&t=704s
