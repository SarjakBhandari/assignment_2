import 'package:assignment_2/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircle();
}

class _AreaOfCircle extends State<AreaOfCircle> {
  double radius = 0;
  double area = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter radius",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => {radius = double.parse(value)},
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    area = radius * radius * 3.14;
                  });
                },
                child: Text("calculate"),
              ),
            ),

            Text("Result= $area"),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  });
                },
                child: Text("Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
