import 'package:scoped_model/scoped_model.dart';  // Importing scoped_model package
import 'package:contacts_app/data/contacts.dart';  // Importing the Contact model
import 'package:faker/faker.dart';  // Importing the faker package for generating fake data

// Defining the ContactsModel class that extends Model from scoped_model
class ContactsModel extends Model {
  // List to hold the contact data
  List<Contact> _contacts = [];

  // Getter for the _contacts list
  List<Contact> get contacts => _contacts;

  // Constructor to initialize contacts
  ContactsModel() {
    _initializeContacts();
  }

  // Method to initialize the contacts list with fake data
  void _initializeContacts() {
    final faker = Faker();  // Creating an instance of Faker
    _contacts = List.generate(50, (index) {
      return Contact(
        name: '${faker.person.firstName()} ${faker.person.lastName()}',  // Generating a fake name
        email: faker.internet.email(),  // Generating a fake email address
        phoneNumber: faker.randomGenerator.integer(1000000).toString(),  // Generating a fake phone number
        isFavorite: false,  // Initializing isFavorite to false
      );
    });
    notifyListeners();  // Notifying listeners about changes
  }

  // Method to toggle favorite status of a contact
  void toggleFavorite(int index) {
    _contacts[index].isFavorite = !_contacts[index].isFavorite;  // Toggling the isFavorite status
    _sortContacts();  // Sorting the contacts based on isFavorite status
    notifyListeners();  // Notifying listeners about changes
  }

  // Method to sort contacts based on isFavorite status
  void _sortContacts() {
    _contacts.sort((a, b) => (b.isFavorite ? 1 : 0).compareTo(a.isFavorite ? 1 : 0));  // Sorting the contacts
  }
}
