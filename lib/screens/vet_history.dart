import 'package:flutter/material.dart';

class VetHistoryPage extends StatelessWidget {
  const VetHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Histórico de Consultas')),
      body: const Center(child: Text('Consultas anteriores')),
    );
  }
}
