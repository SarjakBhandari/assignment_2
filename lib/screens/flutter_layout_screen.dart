import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Layout"),
      backgroundColor: Colors.amber,),
    body: Column(
      children:[

        Container(
          margin: EdgeInsets.all(10),
        width:double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all()
        ),
        child: Row(
        children: [
          Spacer(),
          Column(
            children: [
              Icon(Icons.call),
              Container(
                child: Text("Call")
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              Icon(Icons.navigation),
              Container(
                  child: Text("Route")
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              Icon(Icons.share),
              Container(
                  child: Text("Share")
              )
            ],
          ),
          Spacer(),
        ],
      ),
      )]),
    );
  }
}
