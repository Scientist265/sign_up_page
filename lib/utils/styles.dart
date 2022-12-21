import 'package:flutter/material.dart';

class Styles {
  static Color primaryColor = const Color(0xFFEBF2F0);
  static Color iconColor = const Color(0xFF17482E);
  static Color textColor = const Color(0xFF17482E);
  static Color buttonColor = const Color(0xFF426E52);
  static TextStyle headLine = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
    fontFamily: 'Poppins',
    color: Color(0xFF17412B),
  );
  static TextStyle smallTexts =
      TextStyle(fontSize: 17, color: Colors.grey, fontFamily: 'Poppins');
  static TextStyle fieldTexts = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Color(0xFF426E52),
      fontFamily: 'Poppins');
  static TextStyle buttonStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
      color: Styles.buttonColor);
}
