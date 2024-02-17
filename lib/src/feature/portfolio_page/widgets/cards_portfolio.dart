import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/src/commons/commons.dart';
import 'package:url_launcher/url_launcher.dart';

class CardsPortfolio extends StatefulWidget {
  final String titleCard;
  final String lenguageDev;
  final String imagePath;
  final int index;
  final Uri urlProject;
  const CardsPortfolio({
    super.key,
    required this.titleCard,
    required this.lenguageDev,
    required this.imagePath,
    required this.urlProject,
    required this.index,
  });

  @override
  State<CardsPortfolio> createState() => _CardsPortfolioState();
}

class _CardsPortfolioState extends State<CardsPortfolio> {
  bool _isHovering = false;

  Future<void> openInNewTab() async {
    if (await canLaunchUrl(widget.urlProject)) {
      await launchUrl(widget.urlProject, webOnlyWindowName: '_blank');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovering = value;
        });
      },
      onTap: openInNewTab,
      child: Container(
        width: screenSize.width * 0.2,
        height: screenSize.height * 0.2,
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        margin: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: screenSize.width * 0.15,
              height:  screenSize.width * 0.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
            ),
            const Padding(padding: EdgeInsets.all(15.0)),
            Text(
              widget.titleCard,
              style: GoogleFonts.sourceSans3(
                  fontSize: screenSize.width * 0.015,
                  color: Commons.colorWhiteBase,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            Text(
              widget.lenguageDev,
              style: GoogleFonts.sourceSans3(
                  fontSize: screenSize.width * 0.01,
                  color: Commons.colorTextSecondary,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}