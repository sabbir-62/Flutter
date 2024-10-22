// appbar.dart
import 'package:flutter/material.dart';

// Define your custom AppBar in a function to make it reusable
AppBar buildAppBar(BuildContext context, mySnakeBar) {
  return AppBar(
    title: const Text("Title"),
    titleSpacing: 10,
    toolbarHeight: 60,
    toolbarOpacity: 1,
    elevation: 6,
    backgroundColor: Colors.teal,
    actions: [
      IconButton(
          onPressed: () {
            mySnakeBar("Hello, I am Search", context);
          },
          icon: const Icon(Icons.search)),
      IconButton(
          onPressed: () {
            mySnakeBar("Hello, I am Comment", context);
          },
          icon: const Icon(Icons.comment)),
      IconButton(
          onPressed: () {
            mySnakeBar("Hello, I am Email", context);
          },
          icon: const Icon(Icons.email)),
    ],
  );
}
