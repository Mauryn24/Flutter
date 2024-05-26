void main() {
  // Create a Person instance
  Person person = Person(
    firstname: 'john', // First name of the person
    age: 40, // Age of the person
    address: 'Nakuru', // Address of the person
    country: 'Kenya', // Country of the person
    phonenumber: '0712345678', // Phone number of the person
  );

  // Create a Teacher instance
  Teacher teacher = Teacher(
    subjects: ['Maths', 'Chemistry'], // Subjects the teacher teaches
    school: 'TKH', // School where the teacher works
    firstname: 'Faith', // First name of the teacher
    age: 20, // Age of the teacher
    country: 'Uganda', // Country of the teacher
    phonenumber: '0723456789', // Phone number of the teacher
  );

  // Print teacher's information
  teacher.printInfo();

  // Print person's address
  print(person.address);

  // Print person's information
  person.printInfo();

  // Print a formatted string with person's information
  print(
      'My name is ${person.name}, I am ${person.age} years old. My address is ${person.address}');
}

// Define the Person class
class Person {
  // Define attributes/characteristics
  late String name; // Name of the person
  late int age; // Age of the person
  late String? address; // Nullable address of the person
  late String phonenumber; // Phone number of the person
  late String country; // Country of the person

  // Define methods - they give behaviour to the class
  void printInfo() {
    print(name); // Print the name
    print(age); // Print the age
    print(address); // Print the address
    print(formatPhoneNumber()); // Print the formatted phone number
  }

  // Method to format the phone number based on the country
  String formatPhoneNumber() {
    if (country == 'Kenya' && phonenumber.startsWith('0')) {
      return '+254${phonenumber.substring(1)}'; // Format for Kenya
    } else if (country == 'Uganda' && phonenumber.startsWith('0')) {
      return '+256${phonenumber.substring(1)}'; // Format for Uganda
    }
    return phonenumber; // Return the original phone number if no formatting is applied
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
  }
}

// Define the Teacher class, which inherits from Person
class Teacher extends Person {
  // Teacher-specific attributes
  String school; // School where the teacher works
  List<String> subjects; // Subjects the teacher teaches

  // Child constructor
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
