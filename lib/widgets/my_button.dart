import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const MyButton(
        {
          super.key,
          required this.onPressed,
          required this.text,
        }
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
        ),
      ),
        onPressed: onPressed,
        child: Text(text,
        style: TextStyle(
          color: Colors.white
        ),)
    );
  }
}
