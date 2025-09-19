import 'package:flutter/material.dart';
import 'package:portfolio_miguel_belotto/extensions/utils.dart';
import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/data/models/list_of_projects.dart';
import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/presentations/widgets/cards_portfolio.dart';

class ListCardsPortfolio extends StatefulWidget {
  const ListCardsPortfolio({
    required this.projects,
    super.key,
  });

  final List<ProjectModel> projects;

  @override
  State<ListCardsPortfolio> createState() => _ListCardsPortfolioState();
}

class _ListCardsPortfolioState extends State<ListCardsPortfolio> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.47,
      width: context.width,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        itemCount: widget.projects.length,
        itemBuilder: (context, index) {
          return CardsPortfolio(
            project: widget.projects[index],
          );
        },
      ),
    );
  }
}
