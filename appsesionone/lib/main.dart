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
    //vamos agregar rutas
    return MaterialApp(
      //con cual ruta se va a iniciar la app
      initialRoute: '/',
      theme: ThemeData(colorSchemeSeed: Colors.indigoAccent),
      //rutas de navegacion con nombre
      routes: {
        '/': (context) => const MiPerfilPag(), //pagina inicial por defecto se mostrara lo que hay en MiPerfilPag
        '/sobreMi': (context) => const SobreMiPag(),
      },
    );
  }
}
