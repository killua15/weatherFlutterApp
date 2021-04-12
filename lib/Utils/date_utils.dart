import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension FormateDate on DateTime {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static String toDateFormat(String date_time, String format) {
    final DateFormat formatter = DateFormat(format);
    final date_time_convert = DateTime.parse(date_time);
    final String formatted = formatter.format(date_time_convert);
    return formatted;
  }

  static String toDateFormatUnix(String date_time, String format) {
    var date = DateTime.fromMillisecondsSinceEpoch(int.parse(date_time) * 1000);
    var formattedDate = DateFormat.yMMMd().format(date); // Apr 8, 2020
    return formattedDate.toString();
  }

  static String getStringMonth(int month) {
    switch (month) {
      case DateTime.january:
        return "Jan";
      case DateTime.february:
        return "Feb";
      case DateTime.march:
        return "Mar";
      case DateTime.april:
        return "Apr";
      case DateTime.may:
        return "May";
      case DateTime.june:
        return "Jun";
      case DateTime.july:
        return "Jul";
      case DateTime.august:
        return "Ago";
      case DateTime.september:
        return "Sep";
      case DateTime.october:
        return "Oct";
      case DateTime.november:
        return "Nov";
      case DateTime.december:
        return "Dec";
      default:
        return "none";
    }
  }
}
