import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
  // const ContactsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        // List view allows one to scroll
        itemCount: 30,
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              'Contact Text',
              style: TextStyle(fontSize: 30),
            ),
          );
        },
      ),
    );
  }
}
