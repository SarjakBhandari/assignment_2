import 'package:assignment_2/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreen();
}

class _SimpleInterestScreen extends State<SimpleInterestScreen> {
  double principle = 0;
  double rate = 0;
  double time = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculation"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Principle",
                hintText: "e.g 2000000",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => {principle = double.parse(value)},
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter rate in %",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => {rate = double.parse(value)},
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter time ( in years)",
                hintText: "e.g 1",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => {time = double.parse(value)},
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = (principle * rate * time) / 100;
                  });
                },
                child: Text("Calculate"),
              ),
            ),
            SizedBox(height: 8),
            Text("Result= $result"),
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
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
