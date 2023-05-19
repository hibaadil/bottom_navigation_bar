import 'package:flutter/material.dart';

// if you want to use this nav bar in any screen on the project just call the method.

Widget myBottomNavBar(int currentIndex, Function(int) onTap) {
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    )
  ], currentIndex: currentIndex, onTap: (index) => onTap(index));
}
