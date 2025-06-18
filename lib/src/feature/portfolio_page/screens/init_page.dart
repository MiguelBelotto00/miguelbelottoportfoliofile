import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/extensions/utils.dart';
import 'package:miguelbelotto00/src/commons/commons.dart';
import 'package:miguelbelotto00/src/feature/portfolio_page/widgets/header_spoti.dart';
import 'package:miguelbelotto00/src/feature/portfolio_page/widgets/list_cards_portfolio.dart';

class InitPage extends StatefulWidget {
  const InitPage({
    super.key,
  });

  @override
  State<InitPage> createState() => _InitState();
}

class _InitState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: context.height,
        width: context.width * 0.82,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Commons.colorBackgroundHigligth, Commons.colorBlackBase],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderSpoti(),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 25),
              child: Text(
                'Mis Proyectos',
                style: GoogleFonts.sourceSans3(
                  fontSize: context.width * 0.015,
                  color: Commons.colorWhiteBase,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListCardsPortfolio(
                projects: listOfProjecst,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
