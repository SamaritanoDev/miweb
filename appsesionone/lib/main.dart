import 'package:appsesionone/src/features/about_me/sobre_mi_pag.dart';
import 'package:appsesionone/src/features/mi_perfil/mi_perfil_pag.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.indigoAccent),
      home: const MiPerfilPag(),
      // home: const SobreMiPag(),
    );
  }
}
