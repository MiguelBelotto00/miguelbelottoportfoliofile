//Riverpod class for the portfolio provider

import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/data/models/list_of_projects.dart';
import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/data/repository/projects_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'portfolio_provider.g.dart';

@Riverpod(keepAlive: true)
class PortfolioProvider extends _$PortfolioProvider {
  @override
  FutureOr<List<ProjectModel>> build() async {
    return ProjectRepositoryImpl().getProjects();
  }
}
