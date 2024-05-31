import 'package:intl/intl.dart';

mixin DateTimeHelper {
  static String formatDate(DateTime date) {
    return DateFormat('d-MMM, yyyy').format(date);
  }
}
