import 'package:flutter/material.dart';  // Importing Flutter material package
import 'package:contacts_app/data/contacts.dart';  // Importing the Contact model

// Defining the ContactTile widget class
class ContactTile extends StatelessWidget {
  final Contact contact;  // Contact to be displayed
  final VoidCallback onFavoriteToggle;  // Callback for toggling favorite status

  // Constructor with required parameters
  const ContactTile({
    Key? key,
    required this.contact,
    required this.onFavoriteToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contact.name),  // Displaying the contact's name
      subtitle: Text(contact.email),  // Displaying the contact's email
      trailing: IconButton(
        icon: Icon(
          contact.isFavorite ? Icons.star : Icons.star_border,  // Displaying the correct icon
          color: contact.isFavorite ? Colors.amber : Colors.grey,  // Setting the icon color
        ),
        onPressed: onFavoriteToggle,  // Setting the onPressed callback
      ),
    );
  }
}
