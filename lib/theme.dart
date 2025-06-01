import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFF57C00); // Laranja forte
const Color secondaryColor = Color(0xFF0D47A1); // Azul escuro
const Color backgroundColor = Color(0xFFFDFCFB); // Cor neutra clara
const Color accentColor = Color(0xFFFFA726); // Laranja claro

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    primary: primaryColor,
    secondary: secondaryColor,
    background: backgroundColor,
  ),
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    centerTitle: true,
    elevation: 1,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 16),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: secondaryColor,
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
);
