import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/extensions/utils.dart';
import 'package:miguelbelotto00/src/commons/commons.dart';
import 'package:miguelbelotto00/src/feature/portfolio_page/models/list_of_projects.dart';
import 'package:url_launcher/url_launcher.dart';

class CardsPortfolio extends StatefulWidget {
  const CardsPortfolio({
    required this.project,
    super.key,
  });
  final ProjectModel project;

  @override
  State<CardsPortfolio> createState() => _CardsPortfolioState();
}

class _CardsPortfolioState extends State<CardsPortfolio> {
  bool _isHovering = false;

  Future<void> openInNewTab() async {
    final url = Uri.parse(widget.project.urlproject);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, webOnlyWindowName: '_blank');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHovering = value;
        });
      },
      onTap: openInNewTab,
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: _isHovering
              ? Commons.colorBackgroundHigligth
              : Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    widget.project.subtitle,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(15)),
            Text(
              widget.project.titleCard,
              style: GoogleFonts.sourceSans3(
                fontSize: context.width * 0.015,
                color: Commons.colorWhiteBase,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              widget.project.lenguageDev,
              style: GoogleFonts.sourceSans3(
                fontSize: context.width * 0.01,
                color: Commons.colorTextSecondary,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
