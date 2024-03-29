import 'package:flutter/material.dart';
import 'package:miguelbelotto00/src/feature/portfolio_page/models/list_of_projects.dart';

class Commons {
  static const Color colorBlackBase = Color(0xFF121212);
  static const Color colorWhiteBase = Color(0xFFFFFFFF);
  static const Color colorBlackHiglight = Color(0xFF1a1a1a);
  static const Color colorBackgroundHigligth = Color(0xFF2a2a2a);
  static const Color colorTextSecondary = Color(0xFFa7a7a7);
  static const Color colorTextNegative = Color(0xFFf15e6c);
  static const Color colorTextWarning = Color(0xFFffa42b);
  static const Color colorTextPostivie = Color(0xFF1ed760);
  static const Color textAnnouncement = Color(0xFF3d91f4);
  static const Color essentialSubdued = Color(0xFF727272);
  static const Color colorSpotifyRed = Color(0xFFe91429);
  static const Color colorSpotifyGreen = Color(0xFF1ed760);
  static const Color colorSpotifyBlue = Color(0xFF0d72ea);
}

const listOfProjects2 = '''
[
  {
    "titleCard": "Tiktokemon",
    "lenguageDev": "Desarrollado en flutter",
    "subtitle": "assets/img/tiktokemon.png",
    "urlProject": "https://github.com/MiguelBelotto00/Tiktokemon"
  },
  {
    "titleCard": "Bot de Twitter",
    "lenguageDev": "Desarrollado en Python",
    "subtitle": "assets/img/bot_fit.png",
    "urlProject": "https://github.com/MiguelBelotto00/Fitbot01"
  },
  {
    "titleCard": "Clon de Twitter",
    "lenguageDev": "Desarrollado en flutter",
    "subtitle": "assets/img/twitterclone.png",
    "urlProject": "https://github.com/MiguelBelotto00/TwitterCloneMobile"
  }
]''';

final listOfProjecst = projectsFromJson(listOfProjects2);
