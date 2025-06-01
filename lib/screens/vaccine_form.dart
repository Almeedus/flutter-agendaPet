import 'package:flutter/material.dart';

class VaccineFormPage extends StatelessWidget {
  const VaccineFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastrar Vacina')),
      body: const Center(child: Text('Formulário de vacina')),
    );
  }
}
