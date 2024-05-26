void main() {
  // main
  Person person = Person('john', 40, 'Nakuru','0712345678', 'Kenya');
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
  late String? address;
  late String? phonenumber;
  late String? Country;

  // methods - they give behaviour to class
  void printInfo() {
    print(name);
    print(age);
  }

  Person(String firstname, int age, String address,String country, String phone){
  
  this.name = 'Dr $firstname';
  this.age = age;
  this.Country = country;
  this.phonenumber = phone;
}
  // Constructor
  // this.name - link your name to the name attribute
  // Person(this.name, this.age, this.phonenumber, this.Country
  //     [this.address = 'Nairobi, Kenya']);
}


// inheritance
// class Teacher extends Person {
//   // Person is the parent class/superclass
//   // Teacher is the child/subclass

//   // child constructor
// }
