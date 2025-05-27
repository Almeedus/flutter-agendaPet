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
          // Conteúdo centralizado
          Center(
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60),
              child: Column(
                mainAxisSize: MainAxisSize.min, // evita ocupar altura infinita
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Agenda Pet',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
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
                  const SizedBox(height: 30),
                  const Text(
                    'Descrição do app',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 20,
                    width: 150,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
          ),

          // Botão fixo no canto inferior direito
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
