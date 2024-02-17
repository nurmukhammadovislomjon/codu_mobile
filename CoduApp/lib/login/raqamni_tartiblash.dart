
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumber extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String enteredData = newValue.text;

    StringBuffer buffer = StringBuffer();
    for (int i = 0; i < enteredData.length; i++) {
      buffer.write(enteredData[i]);
      int index = i + 1;

      if (index == 2 && enteredData.length != index) {
        buffer.write(" ");
      } else if (index == 5 && enteredData.length != index) {
        buffer.write(" ");
      } else if (index == 7 && enteredData.length != index) {
        buffer.write(" ");
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length));
  }
}
