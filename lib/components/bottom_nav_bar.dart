import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottomBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        // color: Colors.grey[400],
        color: Colors.redAccent,
        // activeColor: Colors.grey.shade700,
        activeColor: Colors.black,
        // tabActiveBorder: Border.all(color: Colors.white),
        tabActiveBorder: Border.all(color: Colors.red),
        // tabBackgroundColor: Colors.grey.shade100,
        tabBackgroundColor: Colors.red,
        tabBorderRadius: 16,
        gap: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.heart_broken,
            text: 'Favorites',
          ),
          // GButton(
          //   icon: Icons.heart_broken,
          //   text: 'Favorites',
          // ),

        ],
      ),

    );
  }
}
