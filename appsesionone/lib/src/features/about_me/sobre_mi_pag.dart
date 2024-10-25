import 'package:appsesionone/src/features/about_me/widgets/boton_contacto.dart';
import 'package:appsesionone/src/features/mi_perfil/widgets/title_profile.dart';
import 'package:flutter/material.dart';

class SobreMiPag extends StatelessWidget {
  const SobreMiPag({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleProfile(),
              SizedBox(height: 20.0),
              Text(
                'Contáctame',
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
             
              BotonContacto(),
            ],
          ),
        ),
      ),
    );
  }
}
