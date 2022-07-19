import 'package:flutter/material.dart';

class TextFieldConstant {
  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.withOpacity(0.2), width: 2),
    borderRadius: BorderRadius.circular(8),
  );

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.deepPurple, width: 2),
    borderRadius: BorderRadius.circular(8),
  );

  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2),
    borderRadius: BorderRadius.circular(8),
  );
}
