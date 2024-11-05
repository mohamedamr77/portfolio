import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class ToastUtils {
  static void showToast({
    required String message,
    Color backgroundColor = Colors.red,
    Color textColor = Colors.white,
    ToastGravity gravity = ToastGravity.BOTTOM,
    int timeInSecForIosWeb = 1,
    Toast toastLength = Toast.LENGTH_LONG,
  }) {
    Fluttertoast.showToast(
      msg: message,
      fontSize: 16,
      backgroundColor: backgroundColor,
      textColor: textColor,
      timeInSecForIosWeb: timeInSecForIosWeb,
      toastLength: toastLength,
      gravity: gravity,
      webShowClose: true,
    );
  }
}
