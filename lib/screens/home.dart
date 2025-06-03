// lib/screens/home.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pet_profile.dart';
import 'vaccine_form.dart';
import 'pet_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Pet', style: GoogleFonts.inter()),
        backgroundColor: const Color(0xFF5D3A9B),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            Text(
              'Bem-vindo!',
              textAlign: TextAlign.center,
              style: GoogleFonts.kumbhSans(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF5D3A9B),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.pets, color: Color(0xFF5D3A9B)),
              label: Text(
                'Cadastrar Pet',
                style: GoogleFonts.kumbhSans(
                  fontSize: 18,
                  color: const Color(0xFF5D3A9B),
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PetFormScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD9D4C8),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.person, color: Color(0xFF5D3A9B)),
              label: Text(
                'Ver Perfil do Pet',
                style: GoogleFonts.kumbhSans(
                  fontSize: 18,
                  color: const Color(0xFF5D3A9B),
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PetProfileScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD9D4C8),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.vaccines, color: Color(0xFF5D3A9B)),
              label: Text(
                'Registrar Vacina',
                style: GoogleFonts.kumbhSans(
                  fontSize: 18,
                  color: const Color(0xFF5D3A9B),
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const VaccineFormScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD9D4C8),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
