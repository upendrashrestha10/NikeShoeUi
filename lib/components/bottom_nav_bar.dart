import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {

  void Function(int)? onTabChange;

  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: GNav(
        color: Colors.black,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 17,
        onTabChange: (value) => onTabChange!(value),
        tabs:[
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",)
        ],
      ),
    );
  }
}