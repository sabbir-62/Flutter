// snakebar.dart
import 'package:flutter/material.dart';

void mySnakeBar(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2), // You can adjust the duration
    ),
  );
}