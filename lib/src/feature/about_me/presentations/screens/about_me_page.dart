import 'package:flutter/material.dart';
import 'package:portfolio_miguel_belotto/core/styles/design_system.dart';
import 'package:portfolio_miguel_belotto/extensions/utils.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          height: context.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ProjectColors.colorSpotifyBlue,
                Color.fromARGB(255, 9, 76, 158),
                ProjectColors.colorBlackBase,
              ],
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.05,
            vertical: context.height * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Supongo que quieres saber un poco más sobre mi.',
                style: Styles.textBoldStyle,
                textAlign: TextAlign.left,
              ),
              Text(
                'Actualmente me encuentro en Asunción, Paraguay.',
                style: Styles.textBoldStyle,
                textAlign: TextAlign.center,
              ),
              Text(
                '''Soy estudiante de Ingenieria en Informatica planeo terminar la carrera para el 2024.''',
                style: Styles.textBoldStyle,
                textAlign: TextAlign.left,
              ),
              Text(
                '''Soy desarrollador Dart-Flutter, el cual considero mi lenguaje principal,''',
                style: Styles.textBoldStyle,
                textAlign: TextAlign.left,
              ),
              Text(
                'además utilizo Java/Kotlin y base de datos SQL y NoSQL',
                style: Styles.textBoldStyle,
                textAlign: TextAlign.left,
              ),
              Text(
                '''Por supuesto todos necesitamos controlar versiones asi que ese trabajo lo hago con Git''',
                style: Styles.textBoldStyle,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
