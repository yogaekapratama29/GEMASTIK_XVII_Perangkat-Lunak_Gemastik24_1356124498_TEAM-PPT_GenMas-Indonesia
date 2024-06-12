import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Flush {
  static showSnackBar(context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          "Error",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  static showFlutterToast() {
    return Fluttertoast.showToast(
        msg: "Error",
        backgroundColor: Colors.red,
        fontSize: 20,
        gravity: ToastGravity.TOP);
  }

  static showFlushBar(BuildContext context, String title, String message, Color color) {
    return Flushbar(
      title: title,
      message: message,
      backgroundColor: color,
      flushbarPosition: FlushbarPosition.TOP,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      duration: Duration(milliseconds: 1100),
      borderRadius: BorderRadius.circular(15),
      icon: Icon(
        Icons.error,
        color: Colors.white,
      ),
    ).show(context);
  }
}
