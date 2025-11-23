import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Column"),
      backgroundColor: Colors.blue),
      body:
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=>{}, child: Text("Button 1")),
            ElevatedButton(onPressed: ()=>{}, child: Text("Button 2")),
            ElevatedButton(onPressed: ()=>{}, child: Text("Button 3")),

          ],
        )
        ),
        // child:  Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Column(
        //       children: [
        //         Icon(Icons.star, size:50),
        //         Icon(Icons.star, size:50),
        //       ],
        //     ),
        //     Column(
        //       children: [
        //         Icon(Icons.star, size:50),
        //         Icon(Icons.star, size:50),
        //         Icon(Icons.star, size:50),
        //       ],
        //     ),
        //     Column(
        //       children: [
        //     Icon(Icons.star, size:50),
        //     Icon(Icons.star, size:50),
        //     ])
        //   ],
        // )
      // ),
    );
  }
}
