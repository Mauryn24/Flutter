import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Main application widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Bar'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.search), text: 'Search'),
                Tab(icon: Icon(Icons.person), text: 'Profile'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('Home Page')),
              Center(child: Text('Search Page')),
              Center(child: Text('Profile Page')),
            ],
          ),
        ),
      ),
    );
  }
}
