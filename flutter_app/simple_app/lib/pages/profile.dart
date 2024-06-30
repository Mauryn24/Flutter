import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: Text('Welcome to the Profile Page!'),
      ),
      
    );
    MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
  }
}