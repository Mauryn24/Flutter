void main() {
  // Entry point of the application
  // Creating an instance of the Person class
  Person person = Person(
    firstname: 'john', // First name of the person
    age: 40, // Age of the person
    address: 'Nakuru', // Address of the person
    country: 'Kenya', // Country of the person
    phonenumber: '0712345678', // Phone number of the person
  );

  // Creating an instance of the Teacher class
  Teacher teacher = Teacher(
    subjects: ['Maths', 'Chemistry'], // Subjects the teacher teaches
    school: 'TKH', // School where the teacher works
    firstname: 'Faith', // First name of the teacher
    age: 20, // Age of the teacher
    country: 'Uganda', // Country of the teacher
    phonenumber: '0723456789', // Phone number of the teacher
  );

  teacher.printInfo(); // Printing teacher's information
  print(person.address); // Printing person's address
  person.printInfo(); // Printing person's information

  // Printing a formatted string with person's information
  print('My name is ${person.name}, I am ${person.age} years old. My address is ${person.address}');
}

// Terms in OOP (Object-Oriented Programming):
// - class: A blueprint for creating objects with specific properties and methods
// - object: An instance of a class
// - Inheritance: A mechanism where one class can inherit properties and methods from another class
// - Polymorphism: The ability of different classes to respond to the same method call in different ways
// - Abstraction: Hiding complex implementation details and showing only the necessary features
// - Encapsulation: Bundling the data (attributes) and methods (functions) that operate on the data into a single unit (class)

class Person {
  // Attributes/characteristics of the Person class
  late String name; // Name of the person
  late int age; // Age of the person
  late String? address; // Nullable address of the person
  late String phonenumber; // Phone number of the person
  late String country; // Country of the person

  // Method to print the person's information
  void printInfo() {
    print(name); // Print the name
    print(age); // Print the age
    print(address); // Print the address
    print(phonenumber); // Print the phone number
  }

  // Constructor with named parameters
  Person({
    required String firstname, // Required first name
    required this.age, // Required age
    required this.address, // Required address
    required this.country, // Required country
    required this.phonenumber, // Required phone number
  }) {
    this.name = 'Dr $firstname'; // Initialize name with a prefix 'Dr'
    this.address = 'Nairobi, Kenya'; // Default address if not provided
  }
}

// Inheritance
class Teacher extends Person {
  // Person is the parent class (superclass)
  // Teacher is the child class (subclass)

  String school; // School where the teacher works
  List<String> subjects; // Subjects the teacher teaches

  // Child constructor with named parameters
  Teacher({
    required super.firstname, // Required first name from the superclass
    required super.age, // Required age from the superclass
    required super.country, // Required country from the superclass
    required super.phonenumber, // Required phone number from the superclass
    required this.subjects, // Required subjects taught by the teacher
    required this.school, // Required school where the teacher works
    super.address = 'Embu, Kenya', // Default address if not provided
  });

  @override
  void printInfo() {
    super.printInfo(); // Call the superclass method to print basic info
    print(school); // Print the school
    print(subjects); // Print the subjects
  }
}
