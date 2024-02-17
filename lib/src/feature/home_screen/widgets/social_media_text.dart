import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/src/commons/commons.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaText extends StatefulWidget {
  final Uri urlSocialMedia;
  final String socialMediaName;
  const SocialMediaText(
      {super.key, required this.socialMediaName, required this.urlSocialMedia});

  @override
  State<SocialMediaText> createState() => _SocialMediaTextState();
}

class _SocialMediaTextState extends State<SocialMediaText> {
  bool _isHovering = false;

  Future<void> openInNewTab() async {
    if (await canLaunchUrl(widget.urlSocialMedia)) {
      launchUrl(widget.urlSocialMedia, webOnlyWindowName: '_blank');
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
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(widget.socialMediaName,
            style: GoogleFonts.sourceSans3(
                color: _isHovering
                    ? Commons.colorWhiteBase
                    : Commons.colorTextSecondary,
                fontSize: screenSize.width < 600
                    ? screenSize.width * 0.03
                    : screenSize.width * 0.010)),
      ),
    );
  }
}
