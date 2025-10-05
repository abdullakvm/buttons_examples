import 'package:flutter/material.dart';
import 'package:flutter_buttons/buttons_example.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
   home: ButtonsExample(), );
  }
}
