void main() {
  // Creating an instance of the School class with given properties
  School school = School(
      name: 'TAASS',
      location: 'Embu',
      principal: 'Mr G',
      address: 'Kenya',
      number: '250 pupils');

  // Printing the name of the school to the console
  print(school.name);
  print(school.location);
  print(school.address);
  print(school.number);
}

// Defining the School class
class School {
  // Properties of the School class
  late String name; // Name of the school
  late String location; // Location of the school
  late String principal; // Principal of the school
  late String? address; // Address of the school, optional
  late String number; // Number of pupils in the school

  // Constructor to initialize the properties of the School class
  School({
    required this.name, // Required property name
    required this.location, // Required property location
    required this.principal, // Required property principal
    this.address, // Optional property address
    required this.number, // Required property number
  });
}
