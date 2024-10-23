import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  final Function(String, BuildContext) mySnackBar;

  const InputForm({super.key, required this.mySnackBar, required void Function(String message, BuildContext context) mySnakeBar});

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Name"),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Email"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            obscureText: !_isPasswordVisible, // Hide/show password
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              label: const Text("Password"),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  // Toggle password visibility
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              widget.mySnackBar("This is submit button", context);
            },
            child: const Text("Submit Now"),
          ),
        ),
      ],
    );
  }
}
