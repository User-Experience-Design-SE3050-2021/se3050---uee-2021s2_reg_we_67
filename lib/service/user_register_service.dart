import 'package:http/http.dart' as http;
import 'dart:convert';

Future register(String username,String email, String password) async {
  String url = "http://192.168.229.2:4000/users/register";

  final response = await http.post(Uri.parse(url),
      headers: {"Accept": "application/json"},
      body: {'username': username, 'email': email, 'password': password});

  var convertedDatatoJson = jsonDecode(response.body);
  return convertedDatatoJson;
}
