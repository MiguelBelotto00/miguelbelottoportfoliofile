import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/src/commons/commons.dart';

class HeaderSpoti extends StatefulWidget {
  const HeaderSpoti({super.key});

  @override
  State<HeaderSpoti> createState() => _HeaderSpotiState();
}

class _HeaderSpotiState extends State<HeaderSpoti> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(122, 206, 33, 33),
            Commons.colorBackgroundHigligth,
          ],
        ),
      ),
      height: screenSize.height * 0.45,
      width: screenSize.width,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
        child: Row(
          children: [
            Container(
              width: screenSize.height * 0.35,
              height: screenSize.height * 0.35,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: Offset(0, 3),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/panda.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: screenSize.width * 0.01,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hola, soy',
                  style: GoogleFonts.sourceSans3(
                    color: Commons.colorWhiteBase,
                    fontSize: screenSize.width * 0.012,
                  ),
                ),
                Text(
                  'Miguel Belotto',
                  style: GoogleFonts.sourceSans3(
                    color: Commons.colorWhiteBase,
                    fontSize: screenSize.width * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Desarrollador Dart - Flutter',
                  style: GoogleFonts.sourceSans3(
                    color: Commons.colorTextSecondary,
                    fontSize: screenSize.width * 0.02,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '''Además de Flutter también utilizo: SQL,NoSQL,Git,Java y Kotlin.''',
                  style: GoogleFonts.sourceSans3(
                    color: Commons.colorTextSecondary,
                    fontSize: screenSize.width * 0.01,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
