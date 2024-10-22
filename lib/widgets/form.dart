import 'package:flutter/material.dart';

class InputForm extends StatelessWidget{
  final Function(String, BuildContext) mySnakeBar;

  const InputForm({super.key, required this.mySnakeBar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Name")
              ),
            ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email")
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
              onPressed: (){mySnakeBar("This is submit button", context);},
              child: const Text("Submit Now")
          )
        )
      ],
    );
  }

}