// To parse this JSON data, do
//
//     final kid = kidFromJson(jsonString);

import 'dart:convert';

List<Kid> kidFromJson(String str) => List<Kid>.from(json.decode(str).map((x) => Kid.fromJson(x)));

String kidToJson(List<Kid> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Kid {
    Kid({
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

    factory Kid.fromJson(Map<String, dynamic> json) => Kid(
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
