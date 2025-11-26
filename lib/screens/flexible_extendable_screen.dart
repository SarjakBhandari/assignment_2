import 'package:flutter/material.dart';

class FlexibleExtendableScreen extends StatelessWidget {
  const FlexibleExtendableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              child: Container(
              color: Colors.green,
                width: double.infinity,
                child: Text("1",
                style: TextStyle(fontSize:50,color: Colors.white),
                ),
              ),
              onTap: ()=>{
                print("This is container 1")
              } ,
            ),
          ),
          // Flexible(
          //   fit:FlexFit.tight,
          //   child: Container(
          //     color: Colors.red,
          //     width: double.infinity,
          //     height: 300,
          //   ),
          // ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              child: Container(
                color: Colors.red,
                width: double.infinity,
                child: Text("2",
                  style: TextStyle(fontSize:50,color: Colors.white
                  )),
              ),
              onTap: ()=>{
                print("This is container 2")
              } ,
            ),
          ),
        ]
      )
      );}
  }

