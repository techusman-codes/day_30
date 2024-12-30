import 'package:day_30/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 're-oderable widget',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
