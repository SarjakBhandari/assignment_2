import 'package:assignment_2/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  double first = 0;
  double second = 0;
  double third = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Operations"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter first no",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => {first = double.parse(value)},
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter second no",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => {second = double.parse(value)},
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    third = first + second;
                  });
                },
                child: Text("SUM"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    third = first * second;
                  });
                },
                child: Text("Multiplication"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    third = first - second;
                  });
                },
                child: Text("Substaction"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    third = first / second;
                  });
                },
                child: Text("Division"),
              ),
            ),
            Text("Result= $third"),
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
