void main() {
  // main
  Person person = Person(
    firstname: 'john',
    age: 40,
    address: 'Nakuru',
    country: 'Kenya',
    phonenumber: '0712345678',
  );

  Teacher teacher = Teacher(
    firstname: 'Faith',
    age: 20,
    country: 'Uganda',
    phonenumber: '0723456789',
  );
  teacher.printInfo();
  print(person.address);
  person.printInfo();
  // printing a string in dart
  print(
      'My name is ${person.name}, I am ${person.age} years old. My address is ${person.address}');
}

// terms in oop
//  - keyword class
// -  object - an instance of a class
//  - Inheritance
//  - Polymorphism
//  - Abstraction
//  - Encapsulation

class Person {
  // attributes/characteristics
  late String name;
  late int age;
  late String? address; // nullsble parameter
  late String phonenumber;
  late String country;

  // methods - they give behaviour to class
  void printInfo() {
    print(name);
    print(age);
    print(address);
    print(phonenumber);
  }

  // Constructor with named parameters
  Person({
    required String firstname,
    required this.age,
    required this.address,
    required this.country,
    required this.phonenumber,
  }) {
    this.name = 'Dr $firstname';
    this.address = 'Nairobi, Kenya';
  }
}

// inheritance
class Teacher extends Person {
  // Person is the parent class/superclass
  // Teacher is the child/subclass

  // child constructor
  Teacher({
    required super.firstname,
    required super.age,
    required super.country,
    required super.phonenumber,
    super.address = 'Embu, Kenya',
  });
}
