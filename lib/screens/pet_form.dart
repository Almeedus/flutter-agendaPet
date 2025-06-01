import 'package:flutter/material.dart';

class PetFormPage extends StatelessWidget {
  const PetFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastrar Pet')),
      body: const Center(child: Text('Formulário de pet')),
    );
  }
}
