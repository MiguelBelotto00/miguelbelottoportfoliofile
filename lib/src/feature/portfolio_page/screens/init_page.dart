import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      width: screenSize.width * 0.82,
      height: screenSize.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Commons.colorBackgroundHigligth, Commons.colorBlackBase],
      )),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderSpoti(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 25.0),
              child: Text("Mis Proyectos",
                  style: GoogleFonts.sourceSans3(
                      fontSize: screenSize.width * 0.015,
                      color: Commons.colorWhiteBase,
                      fontWeight: FontWeight.bold)),
            ),
            ListCardsPortfolio(listOfProjects3: listOfProjecst,),
          ]),
    ));
  }
}