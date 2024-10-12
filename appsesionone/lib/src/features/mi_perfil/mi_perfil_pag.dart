import 'package:appsesionone/src/features/mi_perfil/widgets/image_qr.dart';
import 'package:appsesionone/src/features/mi_perfil/widgets/title_profile.dart';
import 'package:flutter/material.dart';

class MiPerfilPag extends StatefulWidget {
  const MiPerfilPag({super.key});

  @override
  State<MiPerfilPag> createState() => _MiPerfilPagState();
}

class _MiPerfilPagState extends State<MiPerfilPag> {
  //creando estado
  Color _backgroundColor = Colors.white;

//funcion para cambiar de color
  void _cambiarBrackgroundColor() {
    setState(() {
      _backgroundColor = (_backgroundColor == Colors.white)
          ? Colors.indigoAccent
          : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          'Mi perfil',
          style: textTheme.titleLarge?.copyWith(color: color.onPrimary),
        ),
      ),
      body: InkWell(
        onTap:
            _cambiarBrackgroundColor, //llamando a la funcion para cambiar de color
        child: Container(
          color: _backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ImageQr(),
              TitleProfile(
                backgroundColor: _backgroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
