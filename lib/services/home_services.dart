import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:ueepro/model/home_model.dart';

class HomeServices {
  static var client = http.Client();
  
  static Future<dynamic> fetchHomeData() async {
    try{
      var response = await client.get(
        Uri.parse('http://localhost:3000/api/homes'),
      );
      if(response.statusCode == 200){
        return homeFromJson(response.body);
      }
      return null;
    } catch(e){
      return null;
    }
  }
  
}
