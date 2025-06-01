// lib/screens/pet_profile.dart

import 'package:flutter/material.dart';

class PetProfileScreen extends StatelessWidget {
  const PetProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dados simulados para o perfil
    const petInfo = {
      'Nome': 'Rex',
      'Idade': '3 anos',
      'Raça': 'Labrador',
      'Sexo': 'Macho'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Perfil do Pet')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/pet_sample.png'),
              ),
            ),
            const SizedBox(height: 24),
            ...petInfo.entries.map((entry) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text('${entry.key}: ${entry.value}',
                      style: const TextStyle(fontSize: 18)),
                )),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Voltar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
