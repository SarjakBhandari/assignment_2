import 'package:assignment_2/screens/area_of_circle.dart';
import 'package:assignment_2/screens/arithmetic_screen.dart';
import 'package:assignment_2/screens/flutter_layout_screen.dart';
import 'package:assignment_2/screens/palindrome_screen.dart';
import 'package:assignment_2/screens/rich_text_screen.dart';
import 'package:assignment_2/screens/simple_interest_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"), backgroundColor: Colors.amber),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    const arithmetic = ArithmeticScreen();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => arithmetic),
                    );
                  });
                },
                child: Text("Arithmetic"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    const simpleInterst = SimpleInterestScreen();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => simpleInterst),
                    );
                  });
                },
                child: Text("Simple Interest"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AreaOfCircle()),
                    );
                  });
                },
                child: Text("Area of Circle"),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PalindromeScreen(),
                      ),
                    );
                  });
                },
                child: Text("Palindrome"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RichTextScreen(),

                      ),
                    );
                  });
                },
                child: Text("RichText"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlutterLayoutScreen(),

                      ),
                    );
                  });
                },
                child: Text("LayoutScreen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
