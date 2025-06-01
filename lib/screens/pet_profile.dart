import 'package:flutter/material.dart';

class PetProfilePage extends StatelessWidget {
  const PetProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil do Pet')),
      body: const Center(child: Text('Dados do pet')),
    );
  }
}
