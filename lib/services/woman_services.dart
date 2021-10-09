import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:ueepro/model/woman_model.dart';

class WomanServices {
  static var client = http.Client();
  
  static Future<dynamic> fetchWomanData() async {
    try{
      var response = await client.get(
        Uri.parse('http://localhost:3000/api/womans'),
      );
      if(response.statusCode == 200){
        return womanFromJson(response.body);
      }
      return null;
    } catch(e){
      return null;
    }
  }
  
}
