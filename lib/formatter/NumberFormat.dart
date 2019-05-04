import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  final CurrencyFormatter currencyFormatter = new CurrencyFormatter();

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String formattedCurrency = newValue.text.isEmpty ? "" : currencyFormatter.toInputDisplayValue(newValue.text);
    int currentCursorPosition = newValue.selection.end;
    int currentCursorMoveAfterFormat = formattedCurrency.length - newValue.text.length;
    currentCursorPosition += currentCursorMoveAfterFormat;
    TextSelection textSelection = new TextSelection(
      baseOffset: currentCursorPosition, extentOffset: currentCursorPosition
    );
    return new TextEditingValue(
      text: formattedCurrency,
      selection: textSelection,
      composing: newValue.composing,
    );
  }
}

class CurrencyFormatter {
  final oCcy = new NumberFormat("#,##0", "en_US");
  String toDisplayValue(double value, {String currency}) {
    if (value == null) {
      return "";
    }
    return currency == null
        ? oCcy.format(value)
        : "${oCcy.format(value)} $currency";
  }

  String toInputDisplayValue(String value) {
    var rawValue = value.replaceAll(RegExp('[^0-9]'), '');
    return oCcy.format(double.parse(rawValue));
  }

  double toValue(String value) {
    return oCcy.parse(value);
  }
}