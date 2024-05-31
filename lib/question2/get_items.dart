import 'dart:convert';


import 'package:faker/faker.dart';
import 'package:flutter/services.dart';

getCategories(){
  List<String> items=[];
  for(int i=0;i<1000;i++) {
    items.add(faker.lorem.words(3).join(' '));
  }
  return items;
}


getVenues(){
  List<String> items=[];
  for(int i=0;i<1000;i++) {
    items.add(faker.lorem.words(2).join(' '));
  }
  return items;
}

getLanguages() async {
  List<String> items;
  String filePath="assets/json/question2/languages.json";
  String jsonString = await rootBundle.loadString(filePath);
  items = await json.decode(jsonString);
  return items;
}