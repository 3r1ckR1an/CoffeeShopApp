import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Image.asset(
              'lib/images/coffee_logo.png',
            ),

            Text('Brew Day'),

            Text('How do you like your coffee'),
          ],
        ),
      ),
    );
  }
}
