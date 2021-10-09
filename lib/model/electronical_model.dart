// To parse this JSON data, do
//
//     final electronical = electronicalFromJson(jsonString);

import 'dart:convert';

List<Electronical> electronicalFromJson(String str) => List<Electronical>.from(json.decode(str).map((x) => Electronical.fromJson(x)));

String electronicalToJson(List<Electronical> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Electronical {
    Electronical({
        this.id,
        this.name,
        this.description,
        this.price,
        this.image,
    });

    String id;
    String name;
    String description;
    String price;
    String image;

    factory Electronical.fromJson(Map<String, dynamic> json) => Electronical(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "description": description,
        "price": price,
        "image": image,
    };
}
