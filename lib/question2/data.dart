import 'dart:convert';

import 'package:faker/faker.dart';
import 'package:flutter/services.dart';

class Data {
  List<String>? _categories;
  List<String> get categories {
    _categories ??= _getCategories();
    return _categories!;
  }

  List<String>? _venues;
  List<String> get venues {
    _venues ??= _getVenues();
    return _venues!;
  }

  List<String>? _languages;
  Future<List<String>> get languages async {
    _languages ??= await _getLanguages();
    return _languages!;
  }

  _getCategories() {
    List<String> items = [];
    for (int i = 0; i < 1000; i++) {
      items.add(faker.lorem.words(3).join(' '));
    }
    return items;
  }

  _getVenues() {
    List<String> items = [];
    for (int i = 0; i < 1000; i++) {
      items.add(faker.lorem.words(2).join(' '));
    }
    return items;
  }

  _getLanguages() async {
    List<dynamic> items;
    String filePath = "assets/json/question2/languages.json";
    String jsonString = await rootBundle.loadString(filePath);
    items = await json.decode(jsonString);
    return items.map((dynamic element) => element.toString()).toList();
  }
}
