import 'dart:convert';

import 'package:flutter/services.dart';

import '../../main.dart';
import 'company/company.dart';

testQuestion1JsonToDart() async {
  String jsonString1 =
      await rootBundle.loadString('assets/json/question1/test1.json');
  Map<String, dynamic> jsonData1 = jsonDecode(jsonString1);
  logger.i("======== test 1 json ======== \n$jsonData1");
  var company1 = Company.fromJson(jsonData1["company"]);
  logger.f("======== test 1 toJson ======== \n${company1.toJson()}");
  Company.fromJson(company1.toJson());

  String jsonString2 =
      await rootBundle.loadString('assets/json/question1/test2.json');
  Map<String, dynamic> jsonData2 = jsonDecode(jsonString2);
  logger.i("======== test 2 json ======== \n$jsonData2");

  var company2 = Company.fromJson(jsonData2["company"]);
  logger.f("======== test 2 toJson ======== \n${company2.toJson()}");

  Company.fromJson(company2.toJson());
}
