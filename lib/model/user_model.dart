// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.username,
    required this.email,
    required this.createdDate,
    required this.id,
    required this.token,
  });

  String username;
  String email;
  DateTime createdDate;
  String id;
  String token;

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json["username"],
        email: json["email"],
        createdDate: DateTime.parse(json["createdDate"]),
        id: json["id"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "createdDate": createdDate.toIso8601String(),
        "id": id,
        "token": token,
      };
}
