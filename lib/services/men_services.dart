import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:ueepro/model/men_model.dart';

class MenServices {
  static var client = http.Client();
  
  static Future<dynamic> fetchMenData() async {
    try{
      var response = await client.get(
        Uri.parse('http://localhost:3000/api/mens'),
      );
      if(response.statusCode == 200){
        return menFromJson(response.body);
      }
      return null;
    } catch(e){
      return null;
    }
  }
  
}
