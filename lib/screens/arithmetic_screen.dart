import 'package:assignment_2/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  // double first = 0;
  // double second = 0;

  //controller
  final TextEditingController textEditingController1 = TextEditingController(text: "1");
  final TextEditingController textEditingController2 = TextEditingController(text: "2");

  // global key for form state
  final _formKey = GlobalKey<FormState>();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic Operations"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child:
        Form(
          key: _formKey,
          child: Column(
          children: [
            TextFormField(
              controller: textEditingController1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter first no",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
              validator: (value){
                  if (value == null || value.isEmpty) {
                    return "Please enter first no";
                  }
                  return null;
                              },
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: textEditingController2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter second no",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Please enter second no";
                }
                return null;
              },
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                  setState(() {
                    double first=double.parse(textEditingController1.text);
                    double second=double.parse(textEditingController2.text);

                    result = first + second;
                  });}
                },
                child: Text("SUM"),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                  setState(() {
                    double first=double.parse(textEditingController1.text);
                    double second=double.parse(textEditingController2.text);
                    result = first * second;
                  });}
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
                  if (_formKey.currentState!.validate()) {
                  setState(() {
                    double first=double.parse(textEditingController1.text);
                    double second=double.parse(textEditingController2.text);
                    result = first - second;
                  });}
                },
                child: Text("Substaction"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                  setState(() {
                    double first=double.parse(textEditingController1.text);
                    double second=double.parse(textEditingController2.text);
                    result = first / second;
                  });}
                },
                child: Text("Division"),
              ),
            ),
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
          ],
        ),
      ),
    ));
  }
}
