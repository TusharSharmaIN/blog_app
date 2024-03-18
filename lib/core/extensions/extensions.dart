import 'package:intl/intl.dart';

extension ReadingTime on String {
  int calcReadingTime() {
    final wordCount = split(RegExp(r'\s+')).length;
    final readingTime = wordCount / 225;
    return readingTime.ceil();
  }
}

extension FormatDateTime on DateTime {
  String formatDateBydMMMYYYY() {
    return DateFormat("d MMM, yyyy").format(this);
  }
}