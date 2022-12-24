import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/commons/commons.dart';
import 'package:url_launcher/url_launcher.dart';

class CardsPortfolio extends StatefulWidget {
  final String titleCard;
  final String lenguageDev;
  final String imagePath;
  final Uri urlProject;
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

  Future<void> openInNewTab() async {
    if (await canLaunchUrl(widget.urlProject)) {
      await launchUrl(widget.urlProject, webOnlyWindowName: '_blank');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        InkWell(
          onHover: (value) {
            setState(() {
              _isHovering = value;
            });
          },
          onTap: openInNewTab,
          child: Container(
            width: 230,
            height: 320,
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
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover)),
                ),
                const Padding(padding: EdgeInsets.all(15.0)),
                ListTile(
                  title: Text(
                    widget.titleCard,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: screenSize.width * 0.015,
                        color: Commons.colorWhiteBase,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    widget.lenguageDev,
                    style: GoogleFonts.sourceSansPro(
                        fontSize: screenSize.width * 0.01,
                        color: Commons.colorTextSecondary,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 230,
          child: Align(
            alignment: const Alignment(0.8, 0.2),
            child: Visibility(
              visible: _isHovering,
              child: FloatingActionButton(
                backgroundColor: Commons.colorSpotifyGreen,
                onPressed: () {},
                child: const Icon(
                  Icons.play_arrow,
                  color: Commons.colorBlackBase,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
