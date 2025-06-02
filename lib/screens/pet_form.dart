// lib/screens/pet_form.dart

import 'package:flutter/material.dart';

class PetFormScreen extends StatefulWidget {
  const PetFormScreen({super.key});

  @override
  State<PetFormScreen> createState() => _PetFormScreenState();
}

class _PetFormScreenState extends State<PetFormScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _breedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastrar Pet')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nome do Pet',
                prefixIcon: Icon(Icons.pets),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Idade',
                prefixIcon: Icon(Icons.cake),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _breedController,
              decoration: const InputDecoration(
                labelText: 'Raça',
                prefixIcon: Icon(Icons.pets_outlined),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
