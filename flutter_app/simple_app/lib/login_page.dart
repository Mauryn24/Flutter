import 'package:flutter/material.dart';
import 'package:simple_app/home_page.dart' as simple_app;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => simple_app.HomePage()),
            );
          },
          child: const Text('Go to Home Page'),
        ),
      ),
    );
  }
}
