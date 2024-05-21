// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mynewapp/main.dart';

void main() {
  testWidgets('My First App displays title and greets the user',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    //await tester.pumpWidget(const Scaffold());

    // Verify that the app bar title is displayed.
    final appBarTitle = find.text('My First App');
    expect(appBarTitle, findsOneWidget);

    // Verify that the greeting text is displayed.
    final greetingText =
        find.text('Hello World!, This is my FIRST FLUTTER APP');
    expect(greetingText, findsOneWidget);
  });
}
