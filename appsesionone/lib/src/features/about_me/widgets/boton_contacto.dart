import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonContacto extends StatelessWidget {
  const BotonContacto({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(FontAwesomeIcons.instagram),
      label: const Text('@amgelcaya'),
    );
  }
}