import 'package:intl/intl.dart';

mixin DateTimeHelper {
  String formatDate(DateTime date) {
    return DateFormat('d-MMM, yyyy').format(date);
  }
}
