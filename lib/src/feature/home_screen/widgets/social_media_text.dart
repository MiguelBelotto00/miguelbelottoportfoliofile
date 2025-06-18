import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/extensions/utils.dart';
import 'package:miguelbelotto00/src/commons/commons.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaText extends StatefulWidget {
  const SocialMediaText({
    required this.socialMediaName,
    required this.urlSocialMedia,
    super.key,
  });
  final Uri urlSocialMedia;
  final String socialMediaName;

  @override
  State<SocialMediaText> createState() => _SocialMediaTextState();
}

class _SocialMediaTextState extends State<SocialMediaText> {
  bool _isHovering = false;

  Future<void> openInNewTab() async {
    if (await canLaunchUrl(widget.urlSocialMedia)) {
      await launchUrl(widget.urlSocialMedia, webOnlyWindowName: '_blank');
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
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          widget.socialMediaName,
          style: GoogleFonts.sourceSans3(
            color: _isHovering
                ? Commons.colorWhiteBase
                : Commons.colorTextSecondary,
            fontSize: context.width < 600
                ? context.width * 0.03
                : context.width * 0.010,
          ),
        ),
      ),
    );
  }
}
