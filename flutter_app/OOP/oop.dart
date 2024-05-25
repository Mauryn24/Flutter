void main() {
  // main
  Person person = Person('john', 40);
  print(person.address);
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
  Person(this.name, this.age, [this.address = 'Kite']);
}
