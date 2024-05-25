import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    // Home page 
      home: Center(

        // padding nesting
        child: Padding(
          padding: const EdgeInsets.all(30.0), // padding

          // text
          child: Text(
            'Hello World!',

            // style
            style: TextStyle(

              // text color
              color: Colors.greenAccent,

              // background color
              backgroundColor: Colors.black54,

              // cross line through a text
              decoration: TextDecoration.lineThrough,
              ),
            ),
        ),
      ),
  ));
}
