import 'package:ptc_quiz1/main.dart';
import 'package:ptc_quiz1/question2/data.dart';

testQuestion2() async {
  Data data = Data();
  data.categories;
  data.venues;
  await data.languages;
  logger.i("========= Question 2 Data Test =========\n");
  logger.f(data.categories);
  logger.e(data.venues);
  logger.t(await data.languages);
}
