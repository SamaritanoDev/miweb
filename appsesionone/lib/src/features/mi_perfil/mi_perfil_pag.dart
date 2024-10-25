import 'package:appsesionone/src/features/about_me/sobre_mi_pag.dart';
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
          padding: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          height: double.infinity,
          color: _backgroundColor,
          //SingleChildScrollView sirve para crear una lista infinita
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                InkWell(
                  //por mientras agregamos esta nnavegacion para ver como se redirige en vercel
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const SobreMiPag();
                    //     },
                    //   ),
                    // );
                    //como ya tenemos el nombre de esta vista ponemos ese /sobreMi y se usaria Navigator.pushNamed
                    Navigator.pushNamed(context, '/sobreMi');
                  },
                  child: const ImageQr(),
                ),
                TitleProfile(
                  backgroundColor: _backgroundColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
