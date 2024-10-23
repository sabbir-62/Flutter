import 'package:flutter/material.dart';

AlertDialog buildAlertDialog(BuildContext context, mySnakeBar) {
  return AlertDialog(
    title: const Text("Alert Dialog"),
    content: const Text("Do you want to delete?"),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
          mySnakeBar("This is alert", context);
        },
        child: const Text("Yes"),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text("No"),
      ),
    ],
  );
}

void myAlertDialog(BuildContext context, mySnakeBar) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return buildAlertDialog(context, mySnakeBar);
    },
  );
}
