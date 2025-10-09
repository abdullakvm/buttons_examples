import 'package:flutter/material.dart';
import 'package:flutter_buttons/cache_image_example.dart';
import 'package:flutter_buttons/lottie_ex.dart';
import 'package:flutter_buttons/shared_priference_ex.dart';


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
   home: SharedPrefenceExample(), );
  }
}
