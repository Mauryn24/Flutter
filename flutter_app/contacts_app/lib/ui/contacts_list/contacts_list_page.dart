import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
  // const ContactsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Column(
        children: <Widget>[
        Text('contact test'),
      ],),
    );
  }
}