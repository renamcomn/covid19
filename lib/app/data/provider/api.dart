import 'dart:convert';
import 'package:covid19/app/data/model/model.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'https://covid19-brazil-api.vercel.app/api/report/v1';

class MyApiClient {

final http.Client httpClient;
MyApiClient({required this.httpClient});


getAll() async {
  try {
    var response = await httpClient.get(Uri.parse(baseUrl));
    if(response.statusCode == 200){
      Map<String, dynamic> jsonResponse = json.decode(response.body);
        List<Data> listMyModel = jsonResponse['data'].map<Data>((map) { 
          return Data.fromJson(map);
        }).toList();
      return listMyModel;
    }else print ('erro -get');
  } catch(_){ }
}

}