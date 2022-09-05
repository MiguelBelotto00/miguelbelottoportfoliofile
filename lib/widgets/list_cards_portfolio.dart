import 'package:flutter/material.dart';
import 'package:miguelbelotto00/widgets/cards_portfolio.dart';

class ListCardsPortfolio extends StatefulWidget {
  const ListCardsPortfolio({Key? key}) : super(key: key);

  @override
  State<ListCardsPortfolio> createState() => _ListCardsPortfolioState();
}

class _ListCardsPortfolioState extends State<ListCardsPortfolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      height: MediaQuery.of(context).size.height * 0.47,
      padding: const EdgeInsets.only(top: 15.0),
      child: ListView(
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.06)),
          const CardsPortfolio(
            titleCard: "Tiktokemon",
            lenguageDev: "Desarrollado en flutter",
            imagePath: "assets/img/tiktokemon.png",
            urlProject: "https://github.com/MiguelBelotto00/Tiktokemon",
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.03)),
          const CardsPortfolio(
            titleCard: "Bot de Twitter",
            lenguageDev: "Desarrollado en Python",
            imagePath: "assets/img/bot_fit.png",
            urlProject: "https://github.com/MiguelBelotto00/Fitbot01",
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.03)),
          const CardsPortfolio(
            titleCard: "Clon de Twitter",
            lenguageDev: "Desarrollado en flutter",
            imagePath: "assets/img/twitterclone.png",
            urlProject: "https://github.com/MiguelBelotto00/TwitterCloneMobile",
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.03)),
        ],
      ),
    );
  }
}
