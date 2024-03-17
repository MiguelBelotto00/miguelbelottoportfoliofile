import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/src/commons/commons.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
        child: Container(
          width: screenSize.width * 0.82,
          height: screenSize.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Commons.colorSpotifyBlue,
                Color.fromARGB(255, 9, 76, 158),
                Commons.colorBlackBase,
              ],
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: screenSize.width * 0.05,
            vertical: screenSize.height * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Supongo que quieres saber un poco más sobre mi.',
                style: GoogleFonts.sourceSans3(
                  color: Commons.colorWhiteBase,
                  fontSize: screenSize.width * 0.025,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                'Actualmente me encuentro en Asunción, Paraguay.',
                style: GoogleFonts.sourceSans3(
                  color: Commons.colorWhiteBase,
                  fontSize: screenSize.width * 0.015,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                '''Soy estudiante de Ingenieria en Informatica planeo terminar la carrera para el 2024.''',
                style: GoogleFonts.sourceSans3(
                  color: Commons.colorWhiteBase,
                  fontSize: screenSize.width * 0.015,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                '''Soy desarrollador Dart-Flutter, el cual considero mi lenguaje principal,''',
                style: GoogleFonts.sourceSans3(
                  color: Commons.colorWhiteBase,
                  fontSize: screenSize.width * 0.015,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                'además utilizo Java/Kotlin y base de datos SQL y NoSQL',
                style: GoogleFonts.sourceSans3(
                  color: Commons.colorWhiteBase,
                  fontSize: screenSize.width * 0.015,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                '''Por supuesto todos necesitamos controlar versiones asi que ese trabajo lo hago con Git''',
                style: GoogleFonts.sourceSans3(
                  color: Commons.colorWhiteBase,
                  fontSize: screenSize.width * 0.015,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
