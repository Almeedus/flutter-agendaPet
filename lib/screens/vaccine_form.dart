// lib/screens/vaccine_form.dart

import 'package:flutter/material.dart';

class VaccineFormScreen extends StatefulWidget {
  const VaccineFormScreen({super.key});

  @override
  State<VaccineFormScreen> createState() => _VaccineFormScreenState();
}

class _VaccineFormScreenState extends State<VaccineFormScreen> {
  final _nameController = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar Vacina')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nome da Vacina',
                prefixIcon: Icon(Icons.vaccines),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    _selectedDate == null
                        ? 'Nenhuma data selecionada'
                        : 'Data: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => _pickDate(context),
                )
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Salvar Vacina'),
            )
          ],
        ),
      ),
    );
  }
}
