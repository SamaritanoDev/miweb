import 'package:flutter/material.dart';

class TitleProfile extends StatelessWidget {
  final Color? backgroundColor;

  const TitleProfile({
    super.key,
     this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final descriptionStyle = textTheme.bodyMedium?.copyWith(
        color: backgroundColor == Colors.indigoAccent
            ? Colors.white
            : color.primary);

    return Column(
      children: [
        Text(
          "Angel Josue Caya buendia",
          style: TextStyle(
              color: backgroundColor == Colors.indigoAccent
                  ? Colors.white
                  : Colors.indigo,
              fontSize: 30.0),
        ),
        Text(
          'Ciencias de la Computación',
          style: textTheme.titleLarge?.copyWith(
              color: backgroundColor == Colors.indigoAccent
                  ? Colors.white
                  : color.secondary),
        ),
        Text('Grupo STEM', style: descriptionStyle),
      ],
    );
  }
}
