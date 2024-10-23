// first_row.dart
import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.cyan,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.cyan,
        ),
      ],
    );
  }
}
