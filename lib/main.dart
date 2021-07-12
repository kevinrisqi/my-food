import 'package:flutter/material.dart';
import 'package:my_food/pages/cart_page.dart';
import 'package:my_food/pages/home_page.dart';
import 'package:my_food/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartPage(),
      // home: MainPage(),
    );
  }
}
