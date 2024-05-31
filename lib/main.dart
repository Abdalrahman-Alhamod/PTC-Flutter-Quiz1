
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ptc_quiz1/question3/views/users_list_view.dart';

import 'question1/freezed/freezed.dart';
import 'question1/json_serializable/json_serial.dart';
import 'question1/json_to_dart_extension/json_to_dart.dart';
import 'question1/manual/manual.dart';
import 'question2/test.dart';


void main() async {
  runApp(const PTCQuiz1App());
}

Logger logger = Logger();

class PTCQuiz1App extends StatelessWidget {
  const PTCQuiz1App({super.key});

  @override
  Widget build(BuildContext context) {
    testQuestion1Manual();
    testQuestion1JsonToDart();
    testQuestion1JsonSerial();
    testQuestion1Freezed();
    testQuestion2();
    return const MaterialApp(
      home: UserListView(),
    );
  }
}
