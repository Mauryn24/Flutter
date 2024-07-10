import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class ContactsListPage extends StatelessWidget {
  // Adding a constructor with a key parameter for better widget identification
  // const ContactsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();

    return Scaffold(
      appBar: AppBar(
        // Setting the title of the AppBar
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        // Setting the number of items in the ListView
        itemCount: 30,
        // Building each item in the ListView
        itemBuilder: (context, index) {
          // Generating a first name and last name using faker
          final firstName = faker.person.firstName();
          final lastName = faker.person.lastName();

          return Center(
            // Displaying the generated first and last name
            child: Text(
              // Using string interpolation for better performance and readability
              '$firstName $lastName',
              // Setting the font size of the text
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );
  }
}
