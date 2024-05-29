import 'dart:convert';

import 'package:flutter_covid_19/Model/world_states_model.dart';
import 'package:flutter_covid_19/Services/Utilities/app_url.dart';
import 'package:http/http.dart' as http;

class StatesServices{

  Future<WorldStatesModel> fetchWorldStatesRecords () async{
 final response =await http.get(Uri.parse(Appurl.worldStatesApi));
 if (response.statusCode==200){
  var data =jsonDecode(response.body);
  return WorldStatesModel.fromJson(data);
 }else{
  throw Exception('Error');
 }
  }

  Future<List<dynamic>> countriesListApi () async{
    var data;
 final response =await http.get(Uri.parse(Appurl.countriesList));
 if (response.statusCode==200){
  var data =jsonDecode(response.body);
  return data;
 }else{
  throw Exception('Error');
 }
  }
}