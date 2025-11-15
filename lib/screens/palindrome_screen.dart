import 'package:assignment_2/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreen();
}

class _PalindromeScreen extends State<PalindromeScreen> {
  int number = 0;
  String msg = "";

  bool isPalindrome(int num) {
    int original = num;
    int reverse = 0;
    while (original != 0) {
      reverse = reverse * 10 + (original % 10);
      original = original ~/ 10;
    }
    return num == reverse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Calculation"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter number",
                hintText: "e.g. 2345432",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  number = int.tryParse(value) ?? 0;
                  msg = "";
                });
              },
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    msg = isPalindrome(number)
                        ? "$number is a palindrome"
                        : "$number is not a palindrome";
                  });
                },
                child: Text("Check"),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              msg,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
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
