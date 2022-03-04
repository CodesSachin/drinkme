import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:drinkme/modal/Api_Manager/apiurl.dart';
import 'dart:async';
import 'api_manager.dart';



class apicallState {
  Future<Welcome> apiCall() async{
    var client = http.Client();
    var apiModal;

    try{
      var response = await client.get(Uri.parse(apiUrl.DataUrl));
      if (response.statusCode == 200){
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        // print(jsonMap);
        apiModal = Welcome.fromJson(jsonMap);
        // print(apiModal);
      }
    }catch(Exception){
      return apiModal;
    }
    print("hgdfghcg");
    return apiModal;
  }
}
