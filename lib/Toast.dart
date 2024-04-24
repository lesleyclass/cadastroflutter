
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toast({required String message}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black,
    textColor: Colors.white,
  );
}