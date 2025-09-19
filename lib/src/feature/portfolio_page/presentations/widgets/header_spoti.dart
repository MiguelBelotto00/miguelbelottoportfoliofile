import 'package:flutter/material.dart';
import 'package:portfolio_miguel_belotto/core/styles/project_colors.dart';
import 'package:portfolio_miguel_belotto/core/styles/styles.dart';
import 'package:portfolio_miguel_belotto/extensions/utils.dart';

class HeaderSpoti extends StatefulWidget {
  const HeaderSpoti({super.key});

  @override
  State<HeaderSpoti> createState() => _HeaderSpotiState();
}

class _HeaderSpotiState extends State<HeaderSpoti> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(122, 206, 33, 33),
            ProjectColors.colorBackgroundHigligth,
          ],
        ),
      ),
      height: context.height * 0.45,
      width: context.width,
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
        child: Row(
          children: [
            Container(
              width: context.height * 0.35,
              height: context.height * 0.35,
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
              width: context.width * 0.01,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hola, soy',
                  style: Styles.textBoldStyle,
                ),
                Text(
                  'Miguel Belotto',
                  style: Styles.textBoldStyle,
                ),
                Text(
                  'Desarrollador Dart - Flutter',
                  style: Styles.textBoldStyle,
                ),
                Text(
                  '''Además de Flutter también utilizo: SQL,NoSQL,Git,Java y Kotlin.''',
                  style: Styles.textBoldStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
