import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/login.dart';
import 'screens/register.dart';
import 'screens/home.dart';
import 'screens/pet_form.dart';
import 'screens/pet_profile.dart';
import 'screens/vaccine_form.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const SplashScreen(),
  '/login': (_) => const LoginScreen(),
  '/register': (_) => const RegisterScreen(),
  '/home': (_) => const HomeScreen(),
  '/pet_form': (_) => const PetFormScreen(),
  '/pet_profile': (_) => const PetProfileScreen(),
  '/vaccine_form': (_) => const VaccineFormScreen(),
};
