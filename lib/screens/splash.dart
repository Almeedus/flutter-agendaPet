import 'package:flutter/material.dart';
import 'dart:developer';
import '../widgets/buttons/round_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Agenda Pet',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(87, 87, 87, 1)),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const Text(
                    'Um app para cuidar de quem você mais ama.',
                    style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 50,
            child: RoundButton(
              onPressed: () {
                log("Botão clicado");
              },
            ),
          ),
        ],
      ),
    );
  }
}
