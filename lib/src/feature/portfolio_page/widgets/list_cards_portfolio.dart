import 'package:flutter/material.dart';
import 'package:miguelbelotto00/src/feature/portfolio_page/models/list_of_projects.dart';
import 'package:miguelbelotto00/src/commons/commons.dart';
import 'package:miguelbelotto00/src/feature/portfolio_page/widgets/cards_portfolio.dart';

class ListCardsPortfolio extends StatefulWidget {
  const ListCardsPortfolio({super.key, required this.listOfProjects3});

  final List<ListOfProjects> listOfProjects3;

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
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.06),
                        child: CardsPortfolio(
                          index: index,
                          titleCard: listOfProjecst[index].titleCard,
                          lenguageDev: listOfProjecst[index].lenguageDev,
                          imagePath: listOfProjecst[index].subtitle,
                          urlProject: Uri.parse(
                              listOfProjecst[index].urlproject),
                        ));
                  }))
        ]));
  }
}
