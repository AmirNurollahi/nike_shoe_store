import 'package:flutter/material.dart';
import 'package:nike_shoe_store/bottom_navigation_Bar.dart';

import 'package:nike_shoe_store/screens/login_screen.dart';
import 'package:nike_shoe_store/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarScreen(),
    );
  }
}
