import 'package:flutter/material.dart'; // Import the Material library

void main() {
  runApp(MaterialApp(
    // Run the app with MaterialApp widget
    debugShowCheckedModeBanner: false, // Hide the debug banner in the corner

    home: Scaffold(
      // Scaffold is the basic layout structure
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Pressed..."); // Print a message when the button is pressed
        },
        backgroundColor: Colors.grey[900], // Set the button background color
        child: const Icon(
          Icons.add, // Use the built-in add icon
          color: Colors.grey, // Set the icon color
        ),
      ),
      appBar: AppBar(
        // AppBar for the header
        title: const Text(
          // Set the title of the AppBar
          'Flutter Widgets',
        ),
        centerTitle: true, // Center the title horizontally
        backgroundColor: Colors.grey[800], // Set the background color
        foregroundColor: Colors.grey[200], // Set the text color for the title and icons
      ),
      body: const Center(
        // Center the content within the Scaffold
        child: Text(
          'Hello World!', // The text to be displayed
          style: TextStyle(
            // Style the text
            color: Colors.greenAccent, // Set the text color
            backgroundColor: Colors.black54, // Set the background color (with some transparency)
            decoration: TextDecoration.lineThrough, // Add a line through the text
            fontSize: 45,
          ),
        ),
      ),
    ),
  ));
}
