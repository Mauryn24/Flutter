import 'package:flutter/material.dart';

import 'contacts_list_page.dart';
class BlockedContacts extends StatelessWidget {
  const BlockedContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Title(
        text: "Blocked Contacts",
        fontWeight: 1700,
        color: Colors.red,
        ),
    );
  }
}