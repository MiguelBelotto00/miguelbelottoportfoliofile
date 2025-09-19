import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_miguel_belotto/core/styles/project_colors.dart';
import 'package:portfolio_miguel_belotto/extensions/utils.dart';
import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/presentations/provider/portfolio_provider.dart';
import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/presentations/widgets/header_spoti.dart';
import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/presentations/widgets/list_cards_portfolio.dart';

class InitPage extends ConsumerWidget {
  const InitPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(portfolioProviderProvider).when(
          data: (listOfProjects) => SafeArea(
            child: Container(
              height: context.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ProjectColors.colorBlackBase,
                    ProjectColors.colorBackgroundHigligth,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderSpoti(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 25),
                    child: Text(
                      'Mis Proyectos',
                      style: GoogleFonts.sourceSans3(
                        fontSize: context.width * 0.015,
                        color: ProjectColors.colorWhiteBase,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListCardsPortfolio(
                    projects: listOfProjects,
                  ),
                ],
              ),
            ),
          ),
          error: (error, stackTrace) => SafeArea(child: Text('Error: $error')),
          loading: () => const SafeArea(
            child: CircularProgressIndicator(),
          ),
        );
  }
}
