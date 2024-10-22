// second_row.dart
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Function(String, BuildContext) mySnakeBar;
  final Function(BuildContext, Function(String, BuildContext)) myAlertDialog;

  const Buttons({super.key, required this.mySnakeBar, required this.myAlertDialog});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {
            mySnakeBar("This is text button", context);
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.teal,
          ),
          child: const Text(
            "Text button",
            style: TextStyle(color: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            mySnakeBar("This is Elevated button", context);
          },
          child: const Text("Elevated Button"),
        ),
        OutlinedButton(
          onPressed: () {
            myAlertDialog(context, mySnakeBar);
          },
          child: const Text("Outline Button"),
        ),
      ],
    );
  }
}
