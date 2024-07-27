# LIFTING STATE UP AND CALLBACKS

**Lifting state up** and using **callbacks** are concepts in Flutter (and other UI frameworks) that help you manage state in a hierarchical widget tree. These concepts are particularly useful when you need to manage state that affects multiple child widgets or when a child widget needs to modify the state managed by its parent.

### Lifting State Up

Lifting state up means moving the state from a child widget to a parent widget. This allows the parent to manage the state and pass the necessary data and callbacks down to the child widgets.

### Callbacks

Callbacks are functions passed from parent to child that the child can call to inform the parent of some event or action. This allows the child to modify the parent's state, effectively communicating state changes back up the widget tree.

### Example

Let's illustrate this with an example. We'll create a parent widget that manages a list of contacts and a child widget that represents a contact tile, which can toggle the favorite status of the contact.

1. **Contact Model** (Assuming you already have this):
   
   ```dart
   class Contact {
     final String name;
     final String email;
     final String phoneNumber;
     bool isFavorite;

     Contact({
       required this.name,
       required this.email,
       required this.phoneNumber,
       this.isFavorite = false,
     });
   }
   ```

2. **ContactTile Widget**:

   ```dart
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
         title: Text(contact.name),
         subtitle: Text(contact.email),
         trailing: IconButton(
           icon: Icon(
             contact.isFavorite ? Icons.star : Icons.star_border,
             color: contact.isFavorite ? Colors.amber : Colors.grey,
           ),
           onPressed: onFavoriteToggle,
         ),
       );
     }
   }
   ```

3. **ContactsListPage Widget**:

   ```dart
   import 'package:flutter/material.dart';
   import 'package:faker/faker.dart';
   import 'contact_tile.dart';
   import 'package:contacts_app/data/contacts.dart';

   class ContactsListPage extends StatefulWidget {
     const ContactsListPage({Key? key}) : super(key: key);

     @override
     State<ContactsListPage> createState() => _ContactsListPageState();
   }

   class _ContactsListPageState extends State<ContactsListPage> {
     List<Contact> _contacts = [];

     @override
     void initState() {
       super.initState();
       final faker = Faker();
       _contacts = List.generate(50, (index) {
         return Contact(
           name: '${faker.person.firstName()} ${faker.person.lastName()}',
           email: faker.internet.email(),
           phoneNumber: faker.randomGenerator.integer(1000000).toString(),
           isFavorite: false,
         );
       });
     }

     void _toggleFavorite(int index) {
       setState(() {
         _contacts[index].isFavorite = !_contacts[index].isFavorite;
       });
     }

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: const Text('Contacts'),
         ),
         body: ListView.builder(
           itemCount: _contacts.length,
           itemBuilder: (context, index) {
             final contact = _contacts[index];
             return ContactTile(
               contact: contact,
               onFavoriteToggle: () => _toggleFavorite(index),
             );
           },
         ),
       );
     }
   }
   ```

### Explanation

1. **ContactTile Widget**:
   - `ContactTile` is a stateless widget that displays a contact's information and a favorite icon.
   - It accepts a `contact` object and a `onFavoriteToggle` callback function as parameters.
   - When the favorite icon is pressed, the `onFavoriteToggle` callback is called.

2. **ContactsListPage Widget**:
   - `ContactsListPage` is a stateful widget that manages the list of contacts.
   - In the `initState` method, it initializes a list of contacts using the Faker package.
   - The `_toggleFavorite` method is used to toggle the favorite status of a contact at a given index and calls `setState` to update the UI.
   - In the `build` method, it builds a `ListView` of `ContactTile` widgets.
   - It passes the contact and the `_toggleFavorite` method (wrapped in a callback) to each `ContactTile` widget.

By lifting the state up to the `ContactsListPage` and using callbacks, the child `ContactTile` widgets can inform the parent `ContactsListPage` widget about user interactions (like toggling the favorite status). The parent widget can then manage the state and update the UI accordingly.