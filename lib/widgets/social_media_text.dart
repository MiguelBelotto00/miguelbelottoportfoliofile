import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/commons/commons.dart';

class SocialMediaText extends StatefulWidget {
  final String urlSocialMedia;
  final String socialMediaName;
  const SocialMediaText(
      {Key? key, required this.socialMediaName, required this.urlSocialMedia})
      : super(key: key);

  @override
  State<SocialMediaText> createState() => _SocialMediaTextState();
}

class _SocialMediaTextState extends State<SocialMediaText> {
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
        html.window.open(widget.urlSocialMedia, widget.socialMediaName);
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(widget.socialMediaName,
            style: GoogleFonts.sourceSansPro(
                color: _isHovering
                    ? Commons.colorWhiteBase
                    : Commons.colorTextSecondary,
                fontSize: screenSize.width * 0.010)),
      ),
    );
  }
}
