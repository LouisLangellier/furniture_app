import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home.dart';
import 'package:furniture_app/screens/register.dart';
import 'package:furniture_app/screens/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Furniture Application',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Shop());
  }
}
