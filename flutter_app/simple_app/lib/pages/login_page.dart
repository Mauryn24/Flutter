import 'package:flutter/material.dart';
import 'package:simple_app/components/my_button.dart';
import 'package:simple_app/components/my_textfield.dart';
import 'package:simple_app/components/square_tile.dart';
import 'package:simple_app/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text editing controllers for capturing user input
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Method to sign in the user
  void signUserIn(BuildContext context) {
    // Navigate to the HomePage when the button is clicked
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView( // Wrap with SingleChildScrollView
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Spacer to add some initial space at the top
                const SizedBox(height: 50),

                // App logo/icon
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                // Spacer after the logo
                const SizedBox(height: 50),

                // Welcome message
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                // Spacer before the username textfield
                const SizedBox(height: 25),

                // Username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                // Spacer between textfields
                const SizedBox(height: 10),

                // Password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                // Spacer before the forgot password text
                const SizedBox(height: 10),

                // Forgot password text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                // Spacer before the sign-in button
                const SizedBox(height: 25),

                // Sign-in button
                MyButton(
                  onTap: () => signUserIn(context),
                ),

                // Spacer after the sign-in button
                const SizedBox(height: 50),

                // Divider with "or continue with" text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      // Left side divider
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      // "Or continue with" text
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      // Right side divider
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                // Spacer before the social sign-in buttons
                const SizedBox(height: 50),

                // Google and Apple sign-in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // Google sign-in button
                    SquareTile(imagePath: 'lib/images/google.jpeg'),

                    // Spacer between the buttons
                    SizedBox(width: 25),

                    // Apple sign-in button
                    SquareTile(imagePath: 'lib/images/apple.jpeg'),
                  ],
                ),

                // Spacer before the register prompt
                const SizedBox(height: 50),

                // Register prompt
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // "Not a member?" text
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    // Spacer between texts
                    const SizedBox(width: 4),
                    // "Register now" text
                    const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
