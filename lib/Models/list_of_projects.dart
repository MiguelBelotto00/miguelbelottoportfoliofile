import 'dart:convert';

List<ListOfProjects> listOfProjectsFromJson(String str) =>
    List<ListOfProjects>.from(
        json.decode(str).map((x) => ListOfProjects.fromJson(x)));

String listOfProjectsToJson(List<ListOfProjects> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListOfProjects {
  ListOfProjects({
    required this.titleCard,
    required this.lenguageDev,
    required this.subtitle,
    required this.urlproject,
  });

  final String titleCard;
  final String lenguageDev;
  final String subtitle;
  final String urlproject;

  factory ListOfProjects.fromJson(Map<String, dynamic> json) => ListOfProjects(
        titleCard: json["titleCard"],
        lenguageDev: json["lenguageDev"],
        subtitle: json["subtitle"],
        urlproject: json["urlproject"],
      );

  Map<String, dynamic> toJson() => {
        "titleCard": titleCard,
        "lenguageDev": lenguageDev,
        "subtitle": subtitle,
        "urlproject": urlproject,
      };
}
