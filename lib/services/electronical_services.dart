import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:ueepro/model/electronical_model.dart';

class ElectronicalServices {
  static var client = http.Client();
  
  static Future<dynamic> fetchElectronicalData() async {
    try{
      var response = await client.get(
        Uri.parse('http://localhost:3000/api/electronicals'),
      );
      if(response.statusCode == 200){
        return electronicalFromJson(response.body);
      }
      return null;
    } catch(e){
      return null;
    }
  }
  
}
