import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// At the very top of the file, you'll find the main() function. In its current form, it only tells Flutter to run the app defined in MyApp.
void main() {
  runApp(MyApp());
}

// The MyApp class extends StatelessWidget. Widgets are the elements from which you build every Flutter app.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
// MyAppState defines the data the app needs to function

  @override
  Widget build(BuildContext context) {
    // The state class extends ChangeNotifier, which means that it can notify others about its own changes.
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  // The new getNext() method reassigns current with a new random WordPair.
  //It also calls notifyListeners()(a method of ChangeNotifier)that ensures that anyone watching MyAppState is notified.
  // ↓ Add this.
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  // Every widget defines a build() method that's automatically called every time the widget's circumstances change so that the widget is always up to date.
  Widget build(BuildContext context) {
    // MyHomePage tracks changes to the app's current state using the watch method.
    var appState = context.watch<MyAppState>();
    var pair = appState.current;
    // Every build method must return a widget or (more typically) a nested tree of widgets.
    //  In this case, the top-level widget is Scaffold
    return Scaffold(
      // Column is one of the most basic layout widgets in Flutter. It takes any number of children and puts them in a column from top to bottom
      //  By default, the column visually places its children at the top. You'll soon change this so that the column is centered.
      body: Column(
        children: [
          Text('A random awesome idea:'),
          // This second Text widget takes appState, and accesses the only member of that class, current (which is a WordPair). WordPair provides several helpful getters, such as asPascalCase or asSnakeCase.
          //Here, we use asLowerCase but you can change this now if you prefer one of the alternatives.
          BigCard(pair: pair),
          // ↓ Add this.
          ElevatedButton(
            onPressed: () {
              appState.getNext(); // ← This instead of print().
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(pair.asLowerCase),
      ),
    );
  }
}
