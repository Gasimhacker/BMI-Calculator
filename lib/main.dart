import 'package:flutter/material.dart';
import 'package:bmi_calculator/Input_Page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff090C22),
        appBarTheme: AppBarTheme(
          color: Color(0xff090C22),
        ),
      ),
      home: InputPage(),
    );
  }
}
