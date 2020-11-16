import 'package:coffee_app/order_page.dart';
import 'package:coffee_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewSplash(),
    );
  }
}
