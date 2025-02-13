import 'package:intl/intl.dart';

String getCurrentDateTime() {
  var now = DateTime.now();
  String formattedDate =
      DateFormat("EEE d MMMM, yyyy").format(now); // ex: Sun 9 April, 2023
  return formattedDate;
}
