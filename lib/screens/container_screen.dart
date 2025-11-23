import 'package:assignment_2/app.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Container Screen"),),
      body: SafeArea(
          // child: Center(
          //   child: Container(
          //       width: 200,
          //       height: 200,
          //       alignment: Alignment.center,
          //       // color: Colors.amber,
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //       color: Colors.amber,
          //         border: Border.all(
          //           color: Colors.black,
          //           width: 2
          //         )
          //   ),
          //     child:  Text("Hello World"),
          //   ),
          // )
        
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment:Alignment.centerRight,
          child: Text("Hello"),
        ),
    )
    );
  }
}
