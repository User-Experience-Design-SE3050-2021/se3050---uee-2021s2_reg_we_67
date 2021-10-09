// To parse this JSON data, do
//
//     final home = homeFromJson(jsonString);

import 'dart:convert';

List<Home> homeFromJson(String str) => List<Home>.from(json.decode(str).map((x) => Home.fromJson(x)));

String homeToJson(List<Home> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Home {
    Home({
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

    factory Home.fromJson(Map<String, dynamic> json) => Home(
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
