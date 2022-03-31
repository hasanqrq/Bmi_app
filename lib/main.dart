// ignore_for_file: use_key_in_widget_constructors

import 'package:bmi_app/screens/input_page.dart';
import 'package:flutter/material.dart';



void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0D22),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
      home: InputPage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
