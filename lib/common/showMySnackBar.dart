import 'package:flutter/material.dart';

showMySnackBar({
  required BuildContext context,
  required String messege,
  Color? color
}){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(messege),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.green,
    behavior: SnackBarBehavior.floating),
      );
}