import 'package:intl/intl.dart';

String convertNewsEntityDate(String date) {
  var now = DateTime.parse(date);
  String formattedDate =
      DateFormat("EEE d MMMM, yyyy").format(now); // ex: Sun 9 April, 2023
  return formattedDate;
}
