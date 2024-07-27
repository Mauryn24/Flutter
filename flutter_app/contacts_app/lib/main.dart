import 'package:flutter/material.dart';  // Importing Flutter material package
import 'package:scoped_model/scoped_model.dart';  // Importing scoped_model package
import 'package:contacts_app/ui/model/contacts_model.dart';  // Importing the ContactsModel class
import 'package:contacts_app/ui/contacts_list/contacts_list_page.dart';  // Importing the ContactsListPage widget

void main() {
  runApp(MyApp());  // Running the MyApp widget
}

// Defining the MyApp widget class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<ContactsModel>(
      model: ContactsModel(),  // Providing the ContactsModel to the widget tree
      child: MaterialApp(
        title: 'Contacts App',  // Setting the app title
        theme: ThemeData(
          primarySwatch: Colors.blue,  // Setting the primary color theme
        ),
        home: const ContactsListPage(),  // Setting the home widget
      ),
    );
  }
}
