// To parse this JSON data, do
//
//     final beauty = beautyFromJson(jsonString);

import 'dart:convert';

List<Beauty> beautyFromJson(String str) => List<Beauty>.from(json.decode(str).map((x) => Beauty.fromJson(x)));

String beautyToJson(List<Beauty> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Beauty {
    Beauty({
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

    factory Beauty.fromJson(Map<String, dynamic> json) => Beauty(
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
