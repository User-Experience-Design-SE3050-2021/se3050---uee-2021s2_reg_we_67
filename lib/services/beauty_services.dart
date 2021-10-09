import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:ueepro/model/beauty_model.dart';

class BeautyServices {
  static var client = http.Client();
  
  static Future<dynamic> fetchBeautyData() async {
    try{
      var response = await client.get(
        Uri.parse('http://localhost:3000/api/beautys'),
      );
      if(response.statusCode == 200){
        return beautyFromJson(response.body);
      }
      return null;
    } catch(e){
      return null;
    }
  }
  
}
