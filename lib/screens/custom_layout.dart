import 'package:assignment_2/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class CustomLayout extends StatelessWidget {
  const CustomLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widgets implements"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(
                child:  MyTextFormField(onChanged: (value)=>{}, text: "This is field"),
              ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width)*0.95,
                  child:  MyButton(onPressed: (){}, text: 'Click Me')
                ),

            ],
          ),
      ),
    );
  }
}
