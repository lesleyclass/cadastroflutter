
import 'package:flutter/material.dart';

const TextStyle textButtonStyle = TextStyle(color: Colors.white);
get textFormFieldBorder => OutlineInputBorder(
  borderRadius: BorderRadius.circular(5.0),
  borderSide: const BorderSide(),
);

TextStyle textStyle({bool applyBold = false}) {
  TextStyle textStyle;
  if (applyBold) {
    textStyle = const TextStyle(fontWeight: FontWeight.bold);
  } else {
    textStyle = const TextStyle();
  }
  return textStyle;
}


get buttonStyle => ButtonStyle(
  elevation: MaterialStateProperty.all(5),
  backgroundColor: MaterialStateProperty.all(
    Colors.blue.shade400,
  ),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
);