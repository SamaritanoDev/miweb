import 'package:appsesionone/src/utils/constants.dart';
import 'package:flutter/material.dart';

class ImageQr extends StatelessWidget {
  const ImageQr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      height: 300,
      fit: BoxFit.cover,
      image: AssetImage(myQR),
    );
  }
}
