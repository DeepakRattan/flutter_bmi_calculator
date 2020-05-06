import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      /*Custom Theme
      theme: ThemeData(
        // primaryColor is the background color for toolbars ,tab bars etc.
        primaryColor: Color(0xFF0A0F32),
        // accentColor is the foreground color of widgets
        accentColor: Colors.purple,
        // The background color for a typical material app or a page within the app.
        scaffoldBackgroundColor: Color(0xFF0A0F32),
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),*/
      // All theme related info is specified here
      // Using dark theme with specific changes in some properties
      theme: ThemeData.dark().copyWith(
        // primaryColor is the background color for toolbars ,tab bars etc.
        primaryColor: Color(0xFF0A0F32),
        // The background color for a typical material app or a page within the app.
        scaffoldBackgroundColor: Color(0xFF0A0F32),
      ),
    );
  }
}
