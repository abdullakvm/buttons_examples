import 'package:flutter/material.dart';

class LayoutBuilderSample extends StatelessWidget {
  const LayoutBuilderSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 400) {
            return Container(color: Colors.amber);
          } else {
            return Container(color: Colors.blueAccent);
          }
        },
      ),
    );
  }
}
