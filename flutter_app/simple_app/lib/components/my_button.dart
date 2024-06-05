import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // The onTap function to be executed when the button is tapped
  final Function()? onTap;

  // Constructor to initialize the onTap function
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Specify the function to execute when the button is tapped
      onTap: onTap,
      child: Container(
        // Padding inside the button
        padding: const EdgeInsets.all(25),
        // Margin outside the button
        margin: const EdgeInsets.symmetric(horizontal: 25),
        // Box decoration to style the button
        decoration: BoxDecoration(
          color: Colors.black, // Button color
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
        // Center the text within the button
        child: const Center(
          child: Text(
            "Sign In", // Button text
            style: TextStyle(
              color: Colors.white, // Text color
              fontWeight: FontWeight.bold, // Bold text
              fontSize: 16, // Text size
            ),
          ),
        ),
      ),
    );
  }
}