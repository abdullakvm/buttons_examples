import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LottieExample extends StatelessWidget {
  const LottieExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            Lottie.asset(
  'assets/animations/loading.json',
  width: 200,
  height: 200,
  fit: BoxFit.fill,
),
SizedBox(height: 50,),
Text("Hey Man",style: GoogleFonts.handjet(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.teal.shade800))
          ],
        ),
      ),
    );
  }
}