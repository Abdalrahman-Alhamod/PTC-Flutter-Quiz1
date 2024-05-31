import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ptc_quiz1/question2/test.dart';

void main() async {
  runApp(const PTCQuiz1App());
}

Logger logger = Logger();

class PTCQuiz1App extends StatelessWidget {
  const PTCQuiz1App({super.key});

  @override
  Widget build(BuildContext context) {
    // testQuestion1Manual();
    // testQuestion1JsonToDart();
    // testQuestion1JsonSerial();
    testQuestion2();
    return const Material();
  }
}
