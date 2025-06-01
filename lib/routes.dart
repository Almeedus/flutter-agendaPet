import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/login.dart';
import 'screens/register.dart';
import 'screens/home.dart';
import 'screens/pet_form.dart';
import 'screens/pet_profile.dart';
import 'screens/vaccine_form.dart';
import 'screens/vaccine_history.dart';
import 'screens/vet_history.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const SplashPage(),
  '/login': (context) => const LoginPage(),
  '/register': (context) => const RegisterPage(),
  '/home': (context) => const HomePage(),
  '/pet-form': (context) => const PetFormPage(),
  '/pet-profile': (context) => const PetProfilePage(),
  '/vaccine-form': (context) => const VaccineFormPage(),
  '/vaccine-history': (context) => const VaccineHistoryPage(),
  '/vet-history': (context) => const VetHistoryPage(),
};
