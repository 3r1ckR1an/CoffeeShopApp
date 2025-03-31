import 'package:coffee_shop_app/consts.dart';
import 'package:coffee_shop_app/pages/home_page.dart';
import 'package:coffee_shop_app/utilities/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  void _goToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Image.asset(
              'lib/images/coffee_logo.png',
            ),
            SizedBox(height: 50),
            Text(
              'Brew Day',
              style: GoogleFonts.notoSansHatran(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown[700],
              ),
            ),
            SizedBox(height: 25),
            Text(
              'How do you like your coffee?',
              style: GoogleFonts.notoSansHatran(
                fontSize: 15,
                color: Colors.brown[600],
              ),
            ),
            SizedBox(height: 50),
            MyButton(
              text: 'Enter Shop',
              onPressed: () => _goToHomePage(context),
            ),
          ],
        ),
      ),
    );
  }
}
