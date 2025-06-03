// lib/screens/pet_profile.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetProfileScreen extends StatelessWidget {
  const PetProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const petInfo = {
      'Nome': 'Rex',
      'Idade': '3 anos',
      'Raça': 'Labrador',
      'Sexo': 'Macho'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil do Pet', style: GoogleFonts.inter()),
        backgroundColor: const Color(0xFF5D3A9B),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/pet_sample.png'),
            ),
            const SizedBox(height: 24),
            ...petInfo.entries.map(
              (entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${entry.key}: ',
                      style: GoogleFonts.kumbhSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        entry.value,
                        style: GoogleFonts.kumbhSans(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD9D4C8),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'Voltar',
                  style: GoogleFonts.kumbhSans(
                    fontSize: 18,
                    color: const Color(0xFF5D3A9B),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
