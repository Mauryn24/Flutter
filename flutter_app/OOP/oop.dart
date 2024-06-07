void main() {
  // main
  Person person = Person('john', 40);
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
  String name;
  int age;
  String? address;

  // methods - they give behaviour to class
  void printInfo() {
    print(name);
    print(age);
  }

  // Constructor
  // this.name - link your name to the name attribute
  Person(this.name, this.age, [this.address = 'Kite']);
}
// nheritance is a fundamental concept in object-oriented programming that enables code reuse and promotes modular development. Flutter, Google's UI toolkit, provides powerful inheritance mechanisms that allow developers to create reusable UI components
