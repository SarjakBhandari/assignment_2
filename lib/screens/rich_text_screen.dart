import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Rich Text"),
        backgroundColor: Colors.amber,
      ),
      body:
          Row(children: [
            RichText(text: const TextSpan(text: "H",
            style: TextStyle(
              color: Colors.red,
              fontSize: 40,
              fontWeight: FontWeight.bold
            )
            )),
      RichText(text: const TextSpan(
        text:"ello ",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
        children: [
          TextSpan(
            text: 'bold ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.amber
            )
          ),
          TextSpan(
            text: "World"
          )
        ]
      ))]),
    );
  }
}
