import 'package:flutter/material.dart';

import 'inputPage.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF090d22),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF090d22),
        ),
      ),
      home: InputPage(),
    );
  }
}
