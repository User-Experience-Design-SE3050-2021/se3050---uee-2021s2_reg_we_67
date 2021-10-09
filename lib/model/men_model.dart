// To parse this JSON data, do
//
//     final men = menFromJson(jsonString);

import 'dart:convert';

List<Men> menFromJson(String str) => List<Men>.from(json.decode(str).map((x) => Men.fromJson(x)));

String menToJson(List<Men> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Men {
    Men({
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

    factory Men.fromJson(Map<String, dynamic> json) => Men(
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
