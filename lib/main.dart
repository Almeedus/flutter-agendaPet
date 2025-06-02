import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';
import 'theme.dart';    // seu tema já criado
import 'routes.dart';   // suas rotas já criadas

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seu App',
      debugShowCheckedModeBanner: false,
      theme: appTheme,   // tema definido em theme.dart
      initialRoute: '/',
      routes: appRoutes, // rotas definidas em routes.dart
      builder: (context, child) {
        // AQUI envolve as telas no DeviceFrame para layout mobile
        return Directionality(      // Corrige um erro de Directionality que impedia de rodar o app
          textDirection: TextDirection.ltr,
          child: DeviceFrame(
            device: Devices.android.samsungGalaxyS20, // 
            screen: child!, // tela atual do app
          ),
        );
      },
    );
  }
}
