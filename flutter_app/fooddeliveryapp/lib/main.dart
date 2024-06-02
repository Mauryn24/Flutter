import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/auth/login_or_register.dart';
import 'package:provider/provider.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'package:fooddeliveryapp/theme_provider.dart';

void main() {
  runApp(
     ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
   child: const MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child){
        return MaterialApp(
          theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: const LoginOrRegister(),
    );
      },
    );
    
  }
}

