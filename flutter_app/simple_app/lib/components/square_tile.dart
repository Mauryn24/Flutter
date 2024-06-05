import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  // The path to the image asset to be displayed in the square tile
  final String imagePath;

  // Constructor to initialize the imagePath variable
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add padding to the container
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        // Add border around the container
        border: Border.all(color: Colors.white),
        // Add border radius to make the container a rounded square
        borderRadius: BorderRadius.circular(16),
        // Set the background color of the container
        color: Colors.grey[200],
      ),
      child: Image.asset(
        // Display the image asset inside the container
        imagePath,
        height: 40, // Set the height of the image
      ),
    );
  }
}