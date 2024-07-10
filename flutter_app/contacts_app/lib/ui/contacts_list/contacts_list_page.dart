import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
  // const ContactsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Center(
        child: ListView(
          // List view allows one to scroll
          children: <Widget>[
          Text(
            'contact test',
            style: TextStyle(fontSize: 30),
            ),
        ],),
      ),
    );
  }
}