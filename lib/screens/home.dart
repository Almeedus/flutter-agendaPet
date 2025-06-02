// lib/screens/home.dart

import 'package:flutter/material.dart';
import 'pet_profile.dart';
import 'vaccine_form.dart';
import 'pet_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agenda Pet')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.pets),
              label: const Text('Cadastrar Pet'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PetFormScreen()),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.person),
              label: const Text('Ver Perfil do Pet'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PetProfileScreen()),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.vaccines),
              label: const Text('Registrar Vacina'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const VaccineFormScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
