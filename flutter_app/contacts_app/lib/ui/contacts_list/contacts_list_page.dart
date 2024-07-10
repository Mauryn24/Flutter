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
        child: Column(
          // column aligns the contents vertically
          
          mainAxisSize: MainAxisSize.min,
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