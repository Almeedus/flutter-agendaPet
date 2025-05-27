import 'package:flutter/material.dart';
import '../widgets/buttons/round_button.dart'; // ajuste conforme sua estrutura

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 30,
            child: RoundButton(
              onPressed: () {
                print('Botão clicado');
              },
            ),
          ),
        ],
      ),
    );
  }
}
