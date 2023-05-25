import 'package:intl/intl.dart';

extension NumberFormatExtension on num {
  String toCurrencyString() {
    final formatCurrency =
        NumberFormat.simpleCurrency(locale: 'vi_VN', decimalDigits: 0);
    return formatCurrency.format(this);
  }
}
