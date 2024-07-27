import 'package:flutter/material.dart';
import 'package:contacts_app/data/contacts.dart';

class ContactTile extends StatelessWidget {
  final Contact contact;
  final VoidCallback onFavoriteToggle;

  const ContactTile({
    Key? key,
    required this.contact,
    required this.onFavoriteToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Displaying the contact's name
      title: Text(contact.name),
      // Displaying the contact's email
      subtitle: Text(contact.email),
      // Displaying the favourites contact's phone number
      trailing: IconButton(
        icon: Icon(
          contact.isFavorite ? Icons.star : Icons.star_border,
          color: contact.isFavorite ? Colors.amber : Colors.grey,
        ),
        onPressed: onFavoriteToggle, // Adding onPressed event
      ),
    );
  }
}
