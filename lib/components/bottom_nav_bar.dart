import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.black26,
        activeColor: Colors.black87,
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
            gap: 8,
            padding: EdgeInsets.all(20),
          ),

          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
            gap: 8,
            padding: EdgeInsets.all(20),
          ),
        ],
      ),
    );
  }
}
