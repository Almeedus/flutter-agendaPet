import 'package:flutter/material.dart';

class VaccineHistoryPage extends StatelessWidget {
  const VaccineHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Histórico de Vacinas')),
      body: const Center(child: Text('Lista de vacinas')),
    );
  }
}
