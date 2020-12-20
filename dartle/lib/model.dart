import 'dart:convert';

import 'package:http/http.dart' as http;

import 'error.dart';

 Future<List<DataClass>> getCategoris() async {
    var url = "https://ahmedalshammari.herokuapp.com/products";
    var response = await http.get(url);
    var jsonString = response.body;
    List<DataClass> categories = categoryFromJson(jsonString);
    //print(jsonString);

    return categories;
  }

List<DataClass> categoryFromJson(String str) =>
    List<DataClass>.from(json.decode(str).map((x) => DataClass.fromJson(x)));