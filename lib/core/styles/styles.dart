import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_miguel_belotto/core/styles/project_colors.dart';

class Styles {
  static TextStyle titleStyle = GoogleFonts.sourceSans3(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ProjectColors.colorWhiteBase,
  );

  static TextStyle subtitleStyle = GoogleFonts.sourceSans3(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: ProjectColors.colorWhiteBase,
  );

  static TextStyle textStyle = GoogleFonts.sourceSans3(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: ProjectColors.colorWhiteBase,
  );

  static TextStyle textBoldStyle = GoogleFonts.sourceSans3(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: ProjectColors.colorWhiteBase,
  );

  static TextStyle subtitleBoldStyle = GoogleFonts.sourceSans3(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ProjectColors.colorWhiteBase,
  );

  static TextStyle titleRegularStyle = GoogleFonts.sourceSans3(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: ProjectColors.colorWhiteBase,
  );
}
