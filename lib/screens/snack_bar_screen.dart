import 'package:assignment_2/common/showMySnackBar.dart';
import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: ()=>{
              showMySnackBar(context: context, messege: "Hello")
            }, child: Text("Hello")),
          ],
        ),
      ),
    );
  }
}
