// To parse this JSON data, do
//
//     final woman = womanFromJson(jsonString);

import 'dart:convert';

List<Woman> womanFromJson(String str) => List<Woman>.from(json.decode(str).map((x) => Woman.fromJson(x)));

String womanToJson(List<Woman> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Woman {
    Woman({
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

    factory Woman.fromJson(Map<String, dynamic> json) => Woman(
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
