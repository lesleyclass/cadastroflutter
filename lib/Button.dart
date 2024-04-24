

import 'package:flutter/material.dart';

import 'Util.dart';

Widget button ({
  required String text,
  VoidCallback? onPressed,
}){
  return ElevatedButton(
    style: buttonStyle,
    onPressed: onPressed,
    child: Text(
      text,
      style: textButtonStyle,
    ),
  );
}