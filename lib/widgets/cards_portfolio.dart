import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/commons/commons.dart';

class CardsPortfolio extends StatefulWidget {
  final String titleCard;
  final String lenguageDev;
  final String imagePath;
  final String urlProject;
  const CardsPortfolio(
      {Key? key,
      required this.titleCard,
      required this.lenguageDev,
      required this.imagePath,
      required this.urlProject})
      : super(key: key);

  @override
  State<CardsPortfolio> createState() => _CardsPortfolioState();
}

class _CardsPortfolioState extends State<CardsPortfolio> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovering = value;
        });
      },
      onTap: () {
        html.window.open(widget.urlProject, widget.titleCard);
      },
      child: Container(
        width: screenSize.width * 0.15,
        height: screenSize.height * 0.45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: _isHovering
                ? Commons.colorBackgroundHigligth
                : Commons.colorBlackHiglight,
            boxShadow: const [
              BoxShadow(
                  color: Commons.colorBlackBase,
                  blurRadius: 10.0,
                  spreadRadius: 1,
                  offset: Offset(0.0, 0.0))
            ]),
        child: Stack(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.015),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.all(8.0)),
                  Container(
                    width: screenSize.width * 0.12,
                    height: screenSize.width * 0.11,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage(widget.imagePath),
                            fit: BoxFit.cover)),
                  ),
                  const Padding(padding: EdgeInsets.all(15.0)),
                  Text(widget.titleCard,
                      style: GoogleFonts.sourceSansPro(
                          fontSize: screenSize.width * 0.015,
                          color: Commons.colorWhiteBase,
                          fontWeight: FontWeight.w700)),
                  Text(widget.lenguageDev,
                      style: GoogleFonts.sourceSansPro(
                          fontSize: screenSize.width * 0.01,
                          color: Commons.colorTextSecondary,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Container(
              alignment: const Alignment(0.7, 0.1),
              child: Visibility(
                visible: _isHovering,
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: Commons.colorSpotifyGreen,
                  onPressed: () {},
                  child: const Icon(
                    Icons.play_arrow,
                    color: Commons.colorBlackBase,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
