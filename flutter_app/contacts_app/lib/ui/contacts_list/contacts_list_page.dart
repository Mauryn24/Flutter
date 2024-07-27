import 'package:flutter/material.dart';  // Importing Flutter material package
import 'package:scoped_model/scoped_model.dart';  // Importing scoped_model package
import 'package:contacts_app/ui/model/contacts_model.dart';  // Importing the ContactsModel class
import 'package:contacts_app/ui/contacts_list/widget/contact_tile.dart';  // Importing the ContactTile widget

// Defining the ContactsListPage widget class
class ContactsListPage extends StatelessWidget {
  const ContactsListPage({Key? key}) : super(key: key);  // Constructor with key parameter

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(  // Using ScopedModelDescendant to access the model
      builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Contacts'),  // Setting the AppBar title
          ),
          body: ListView.builder(
            itemCount: model.contacts.length,  // Setting the item count
            itemBuilder: (context, index) {
              final contact = model.contacts[index];  // Retrieving a contact from the list
              return ContactTile(
                contact: contact,  // Passing the contact to the ContactTile
                onFavoriteToggle: () => model.toggleFavorite(index),  // Passing the callback to toggle favorite status
              );
            },
          ),
        );
      },
    );
  }
}
