import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              color: Colors.greenAccent,
              backgroundColor: Colors.black54,
              ),
            ),
        ),
      ),
  ));
}
