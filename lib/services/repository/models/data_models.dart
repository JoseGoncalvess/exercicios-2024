import 'dart:convert';

import 'people_models.dart';

class DataModels {
  int count;
  Links links;
  List<Evento> data;

  DataModels({
    required this.count,
    required this.links,
    required this.data,
  });

  factory DataModels.fromRawJson(String str) =>
      DataModels.fromJson(json.decode(str));

  factory DataModels.fromJson(Map<String, dynamic> json) => DataModels(
        count: json["count"],
        links: Links.fromJson(json["links"]),
        data: List<Evento>.from(json["data"].map((x) => Evento.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "links": links.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Evento {
  int id;
  int changed;
  DateTime start;
  DateTime end;
  Description title;
  Description description;
  Category category;
  List<Location> locations;
  Type type;
  List<dynamic> papers;
  List<PeopleModels> people;
  int status;
  int weight;
  dynamic addons;
  dynamic parent;
  String event;

  Evento({
    required this.id,
    required this.changed,
    required this.start,
    required this.end,
    required this.title,
    required this.description,
    required this.category,
    required this.locations,
    required this.type,
    required this.papers,
    required this.people,
    required this.status,
    required this.weight,
    required this.addons,
    required this.parent,
    required this.event,
  });

  factory Evento.fromRawJson(String str) => Evento.fromJson(json.decode(str));

  factory Evento.fromJson(Map<String, dynamic> json) => Evento(
        id: json["id"],
        changed: json["changed"],
        start: DateTime.parse(json["start"]),
        end: DateTime.parse(json["end"]),
        title: Description.fromJson(json["title"]),
        description: Description.fromJson(json["description"]),
        category: Category.fromJson(json["category"]),
        locations: List<Location>.from(
            json["locations"].map((x) => Location.fromJson(x))),
        type: Type.fromJson(json["type"]),
        papers: List<dynamic>.from(json["papers"].map((x) => x)),
        people: List<PeopleModels>.from(json["people"].map((x) => PeopleModels.fromJson(x))),
        status: json["status"],
        weight: json["weight"],
        addons: json["addons"],
        parent: json["parent"],
        event: json["event"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "changed": changed,
        "start": start.toIso8601String(),
        "end": end.toIso8601String(),
        "title": title.toJson(),
        "description": description.toJson(),
        "category": category.toJson(),
        "locations": List<dynamic>.from(locations.map((x) => x.toJson())),
        "type": type.toJson(),
        "papers": List<dynamic>.from(papers.map((x) => x)),
        "people": List<dynamic>.from(people.map((x) => x)),
        "status": status,
        "weight": weight,
        "addons": addons,
        "parent": parent,
        "event": event,
      };
}

class Category {
  int id;
  Description title;
  String? color;
  String? backgroundColor;

  Category({
    required this.id,
    required this.title,
    required this.color,
    required this.backgroundColor,
  });

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        title: Description.fromJson(json["title"]),
        color: json["color"],
        backgroundColor: json["background-color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title.toJson(),
        "color": color,
        "background-color": backgroundColor,
      };
}

class Description {
  String? ptBr;

  Description({
    required this.ptBr,
  });

  factory Description.fromRawJson(String str) =>
      Description.fromJson(json.decode(str));

  factory Description.fromJson(Map<String, dynamic> json) => Description(
        ptBr: json["pt-br"],
      );

  Map<String, dynamic> toJson() => {
        "pt-br": ptBr,
      };
}

class Location {
  int id;
  Description title;
  int parent;
  dynamic map;

  Location({
    required this.id,
    required this.title,
    required this.parent,
    required this.map,
  });

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        title: Description.fromJson(json["title"]),
        parent: json["parent"],
        map: json["map"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title.toJson(),
        "parent": parent,
        "map": map,
      };
}

class Type {
  int id;
  Description title;

  Type({
    required this.id,
    required this.title,
  });

  factory Type.fromRawJson(String str) => Type.fromJson(json.decode(str));

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json["id"],
        title: Description.fromJson(json["title"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title.toJson(),
      };
}

class Links {
  String self;
  String? next;

  Links({
    required this.self,
    required this.next,
  });

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json["self"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "next": next,
      };
}
