import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // The text editing controller for the text field
  final controller;

  // The hint text to display when the text field is empty
  final String hintText;

  // Flag to determine whether the text field should obscure the entered text
  final bool obscureText;

  // Constructor to initialize the controller, hint text, and obscureText flag
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Add padding around the text field
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        // Set the text editing controller
        controller: controller,
        // Determine whether to obscure the entered text
        obscureText: obscureText,
        decoration: InputDecoration(
          // Style the border when the text field is not focused
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          // Style the border when the text field is focused
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          // Fill color for the text field
          fillColor: Colors.grey.shade200,
          // Set whether the text field should be filled
          filled: true,
          // Set the hint text to display when the text field is empty
          hintText: hintText,
          // Style for the hint text
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
