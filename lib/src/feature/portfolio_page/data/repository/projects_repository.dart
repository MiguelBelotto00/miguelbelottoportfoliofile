import 'package:portfolio_miguel_belotto/src/feature/portfolio_page/data/models/list_of_projects.dart';

// ignore: one_member_abstracts
abstract class ProjectRepository {
  Future<List<ProjectModel>> getProjects();
}

class ProjectRepositoryImpl implements ProjectRepository {
  @override
  Future<List<ProjectModel>> getProjects() async {
    const mockedResponse = [
      {
        'titleCard': 'Tiktokemon',
        'lenguageDev': 'Desarrollado en flutter',
        'subtitle': 'assets/img/tiktokemon.png',
        'urlProject': 'https://github.com/MiguelBelotto00/Tiktokemon',
      },
      {
        'titleCard': 'Bot de Twitter',
        'lenguageDev': 'Desarrollado en Python',
        'subtitle': 'assets/img/bot_fit.png',
        'urlProject': 'https://github.com/MiguelBelotto00/Fitbot01',
      },
      {
        'titleCard': 'Clon de Twitter',
        'lenguageDev': 'Desarrollado en flutter',
        'subtitle': 'assets/img/twitterclone.png',
        'urlProject': 'https://github.com/MiguelBelotto00/TwitterCloneMobile',
      }
    ];

    final listOfProjects = List<ProjectModel>.from(
      (mockedResponse as List).map(
        (project) => ProjectModel.fromJson(
          project as Map<String, dynamic>,
        ),
      ),
    );

    return listOfProjects;
  }
}
