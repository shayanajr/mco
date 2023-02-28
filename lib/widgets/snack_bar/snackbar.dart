import 'package:flutter/material.dart';

class CustomSnackBar {
  CustomSnackBar(BuildContext context, Widget content, MaterialColor color,
      {SnackBarAction? snackBarAction, Color backgroundColor = Colors.black}) {
    final SnackBar snackBar = SnackBar(
        action: snackBarAction,
        backgroundColor: color,
        content: content,
        behavior: SnackBarBehavior.floating);

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}