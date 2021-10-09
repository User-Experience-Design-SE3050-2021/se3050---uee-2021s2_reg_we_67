import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:ueepro/model/kid_model.dart';

class KidServices {
  static var client = http.Client();
  
  static Future<dynamic> fetchKidData() async {
    try{
      var response = await client.get(
        Uri.parse('http://localhost:3000/api/kids'),
      );
      if(response.statusCode == 200){
        return kidFromJson(response.body);
      }
      return null;
    } catch(e){
      return null;
    }
  }
  
}
