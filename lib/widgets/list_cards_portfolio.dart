import 'package:flutter/material.dart';
import 'package:miguelbelotto00/commons/commons.dart';
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.47,
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
                  controller: ScrollController(),
                  scrollDirection: Axis.vertical,
                  itemCount: listOfProjects.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06),
                        child: CardsPortfolio(
                          index: index,
                          titleCard: "Tiktokemon",
                          lenguageDev: "Desarrollado en flutter",
                          imagePath: "assets/img/tiktokemon.png",
                          urlProject: Uri.parse(
                              "https://github.com/MiguelBelotto00/Tiktokemon"),
                        ));
                  }))
        ]));
  }
}
