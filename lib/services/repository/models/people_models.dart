import 'dart:convert';

class PeopleModels {
    int id;
    String title;
    String name;
    String institution;
    Bio bio;
    String picture;
    int weight;
    Role role;
    String hash;

    PeopleModels({
        required this.id,
        required this.title,
        required this.name,
        required this.institution,
        required this.bio,
        required this.picture,
        required this.weight,
        required this.role,
        required this.hash,
    });

    factory PeopleModels.fromRawJson(String str) => PeopleModels.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PeopleModels.fromJson(Map<String, dynamic> json) => PeopleModels(
        id: json["id"],
        title: json["title"]?? "",
        name: json["name"],
        institution: json["institution"]??"",
        bio: Bio.fromJson(json["bio"]),
        picture: json["picture"]??"",
        weight: json["weight"],
        role: Role.fromJson(json["role"]),
        hash: json["hash"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "name": name,
        "institution": institution,
        "bio": bio.toJson(),
        "picture": picture,
        "weight": weight,
        "role": role.toJson(),
        "hash": hash,
    };
}

class Bio {
    String ptBr;

    Bio({
        required this.ptBr,
    });

    factory Bio.fromRawJson(String str) => Bio.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Bio.fromJson(Map<String, dynamic> json) => Bio(
        ptBr: json["pt-br"]??"",
    );

    Map<String, dynamic> toJson() => {
        "pt-br": ptBr,
    };
}

class Role {
    int id;
    Bio label;

    Role({
        required this.id,
        required this.label,
    });

    factory Role.fromRawJson(String str) => Role.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        label: Bio.fromJson(json["label"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "label": label.toJson(),
    };
}
