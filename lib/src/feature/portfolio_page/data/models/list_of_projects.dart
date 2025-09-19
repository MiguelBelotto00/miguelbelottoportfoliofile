import 'dart:convert';

List<ProjectModel> projectsFromJson(String str) => List<ProjectModel>.from(
      (jsonDecode(str) as List).map(
        (project) => ProjectModel.fromJson(
          project as Map<String, dynamic>,
        ),
      ),
    );

String projectsToJson(List<ProjectModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProjectModel {
  ProjectModel({
    required this.titleCard,
    required this.lenguageDev,
    required this.subtitle,
    required this.urlproject,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        titleCard: json['titleCard'] as String,
        lenguageDev: json['lenguageDev'] as String,
        subtitle: json['subtitle'] as String,
        urlproject: json['urlProject'] as String,
      );

  final String titleCard;
  final String lenguageDev;
  final String subtitle;
  final String urlproject;

  Map<String, dynamic> toJson() => {
        'titleCard': titleCard,
        'lenguageDev': lenguageDev,
        'subtitle': subtitle,
        'urlProject': urlproject,
      };
}
