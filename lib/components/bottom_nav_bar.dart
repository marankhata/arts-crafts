import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey.shade500,
        activeColor: const Color.fromARGB(255, 9, 50, 111),
        tabActiveBorder: Border.all(color: Colors.grey.shade200),
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 15,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: ('Store'),
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: ('Cart'),
          ),
        ],
      ),
    );
  }
}
