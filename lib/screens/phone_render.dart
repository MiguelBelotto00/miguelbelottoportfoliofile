import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miguelbelotto00/commons/commons.dart';
import 'dart:html' as html;

import '../widgets/social_media_text.dart';

class PhoneRender extends StatefulWidget {
  const PhoneRender({super.key});

  @override
  State<PhoneRender> createState() => _PhoneRenderState();
}

class _PhoneRenderState extends State<PhoneRender> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Commons.colorBackgroundHigligth, Commons.colorBlackBase],
        )),
        child: ListView(children: [
          headerApp(screenSize),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("Mis Proyectos",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: screenSize.width * 0.05,
                      color: Commons.colorWhiteBase,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          cardsPortfolioPhone(screenSize),
          aboutMePagePhone(screenSize)
        ]),
      ),
    );
  }
}

Widget headerApp(Size screenSize) {
  return Container(
    padding: const EdgeInsets.only(top: 20.0),
    color: Commons.colorBlackHiglight,
    height: screenSize.height * 0.6,
    width: screenSize.width,
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: screenSize.width * 0.35,
            height: screenSize.width * 0.35,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: Offset(0.0, 3.0))
              ],
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/img/panda.jpg")),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hola, soy",
                style: GoogleFonts.sourceSansPro(
                    color: Commons.colorWhiteBase,
                    fontSize: screenSize.width * 0.05),
              ),
              Text(
                "Miguel Belotto",
                style: GoogleFonts.sourceSansPro(
                    color: Commons.colorWhiteBase,
                    fontSize: screenSize.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Desarrollador Dart - Flutter",
                style: GoogleFonts.sourceSansPro(
                    color: Commons.colorTextSecondary,
                    fontSize: screenSize.width * 0.03,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Además de Flutter también utilizo: SQL,NoSQL,Git,Java y Kotlin.",
                style: GoogleFonts.sourceSansPro(
                    color: Commons.colorTextSecondary,
                    fontSize: screenSize.width * 0.03,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget cardsPortfolioPhone(Size screenSize) {
  return Container(
    margin: const EdgeInsets.all(25.0),
    width: screenSize.width,
    height: screenSize.height * 0.4,
    padding: const EdgeInsets.all(10.0),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(padding: EdgeInsets.only(left: screenSize.width * 0.06)),
        cardPortfolioPrimitivePhone(
          screenSize,
          "Tiktokemon",
          "Desarrollado en flutter",
          "assets/img/tiktokemon.png",
          "https://github.com/MiguelBelotto00/Tiktokemon",
        ),
        Padding(padding: EdgeInsets.only(left: screenSize.width * 0.03)),
        cardPortfolioPrimitivePhone(
          screenSize,
          "Bot de Twitter",
          "Desarrollado en Python",
          "assets/img/bot_fit.png",
          "https://github.com/MiguelBelotto00/Fitbot01",
        ),
        Padding(padding: EdgeInsets.only(left: screenSize.width * 0.03)),
        cardPortfolioPrimitivePhone(
          screenSize,
          "Clon de Twitter",
          "Desarrollado en flutter",
          "assets/img/twitterclone.png",
          "https://github.com/MiguelBelotto00/TwitterCloneMobile",
        ),
        Padding(padding: EdgeInsets.only(left: screenSize.width * 0.03)),
      ],
    ),
  );
}

Widget cardPortfolioPrimitivePhone(Size screenSize, String titleCard,
    String lenguageDev, String imagePath, String urlProject) {
  return InkWell(
    onHover: (value) {},
    onTap: () {
      html.window.open(urlProject, titleCard);
    },
    child: Container(
      width: screenSize.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Commons.colorBlackBase,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.015),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(8.0)),
                Container(
                  width: screenSize.width * 0.2,
                  height: screenSize.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.cover)),
                ),
                const Padding(padding: EdgeInsets.all(15.0)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(titleCard,
                        style: GoogleFonts.sourceSansPro(
                            fontSize: screenSize.width * 0.04,
                            color: Commons.colorWhiteBase,
                            fontWeight: FontWeight.w700)),
                    Text(lenguageDev,
                        style: GoogleFonts.sourceSansPro(
                            fontSize: screenSize.width * 0.03,
                            color: Commons.colorTextSecondary,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget aboutMePagePhone(Size screenSize) {
  return SafeArea(
      child: Center(
    child: Container(
      width: screenSize.width,
      height: screenSize.height * 0.7,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Commons.colorBlackHiglight, Commons.colorBlackBase]),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.05,
          vertical: screenSize.height * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Un poco más sobre mi.",
            style: GoogleFonts.sourceSansPro(
                color: Commons.colorWhiteBase,
                fontSize: screenSize.width * 0.05,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: screenSize.height * 0.1,
          ),
          Text(
            "Actualmente me encuentro en Asunción, Paraguay.",
            style: GoogleFonts.sourceSansPro(
                color: Commons.colorWhiteBase,
                fontSize: screenSize.width * 0.03),
            textAlign: TextAlign.left,
          ),
          Text(
            "Soy estudiante de Ingenieria en Informatica planeo terminar la carrera para el 2024.",
            style: GoogleFonts.sourceSansPro(
                color: Commons.colorWhiteBase,
                fontSize: screenSize.width * 0.03),
            textAlign: TextAlign.left,
          ),
          Text(
            "Soy desarrollador Dart-Flutter, el cual considero mi lenguaje principal,",
            style: GoogleFonts.sourceSansPro(
                color: Commons.colorWhiteBase,
                fontSize: screenSize.width * 0.03),
            textAlign: TextAlign.left,
          ),
          Text(
            "además utilizo Java/Kotlin y base de datos SQL y NoSQL",
            style: GoogleFonts.sourceSansPro(
                color: Commons.colorWhiteBase,
                fontSize: screenSize.width * 0.03),
            textAlign: TextAlign.left,
          ),
          Text(
            "Por supuesto todos necesitamos controlar versiones asi que ese trabajo lo hago con Git",
            style: GoogleFonts.sourceSansPro(
                color: Commons.colorWhiteBase,
                fontSize: screenSize.width * 0.03),
            textAlign: TextAlign.left,
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SocialMediaText(
                  socialMediaName: "Twitter",
                  urlSocialMedia: "https://twitter.com/MiguelBelotto00"),
              SocialMediaText(
                  socialMediaName: "Linkedin",
                  urlSocialMedia:
                      "https://www.linkedin.com/in/miguel-belotto/"),
              SocialMediaText(
                  socialMediaName: "Github",
                  urlSocialMedia: "https://github.com/MiguelBelotto00"),
            ],
          )
        ],
      ),
    ),
  ));
}
