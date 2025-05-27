import 'package:flutter/material.dart';
import 'screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Agenda Pet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'KumbhSans',
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(), // Aqui você define sua tela inicial
    );
  }
}
