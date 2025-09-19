import 'package:flutter/material.dart';
import 'package:portfolio_miguel_belotto/core/styles/project_colors.dart';
import 'package:portfolio_miguel_belotto/core/styles/styles.dart';
import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/data/models/list_of_projects.dart';
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
              ? ProjectColors.colorBackgroundHigligth
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
              style: Styles.textBoldStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              widget.project.lenguageDev,
              style: Styles.textBoldStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
