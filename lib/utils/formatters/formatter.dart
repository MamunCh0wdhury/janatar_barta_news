import 'package:intl/intl.dart';

class TFormatter {
  static String fromatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('DD-MM-YYYY').format(date);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }
    return phoneNumber;
  }
}
