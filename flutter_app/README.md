# Flutter Introduction / Tutorial

## Stepwise guide in creating a flutter app

1. Create a new folder
   - Create a folder in your file explorer eg, ```flutterapp``` then open it in your vsc

2. Create an app 
   - Use the command ```flutter create app_name```
   - In my case ```flutter create mynewapp```

3. Change into the new app
   - use  ```cd mynewapp```

4. Run the app
   - use ```flutter run```

5. Choose where you want to run the app
   - eg choose ```chrome or windows or edge```

6. To write a new app
   - Access the ```lib/main.dart``` and create your file there
  
 7. Make sure to go through the widgets in Flutter to understand it better
   

 - Below is a detailed readme on the class Person  
# Person Class in Dart

This project demonstrates a basic implementation of a `Person` class in Dart, showcasing object-oriented programming (OOP) concepts such as classes, objects, encapsulation, and the use of constructors.

## Code Overview

### Main Function

The `main` function creates an instance of the `Person` class and prints some of its properties:

```dart
void main() {
  // main
  Person person = Person(
    firstname: 'john',
    age: 40,
    address: 'Nakuru',
    country: 'Kenya',
    phonenumber: '0712345678',
  );

  print(person.address);
  person.printInfo();
  // printing a string in dart
  print(
      'My name is ${person.name}, I am ${person.age} years old. My address is ${person.address}');
}
```

### Person Class

The `Person` class encapsulates the properties and behaviors of a person:

```dart
class Person {
  // attributes/characteristics
  late String name;
  late int age;
  late String? address; // nullable parameter
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
```

## OOP Concepts

### Class

A class is a blueprint for creating objects. It defines properties (attributes) and methods (behaviors) that the objects created from the class will have.

### Object

An object is an instance of a class. It is created using the class and its constructor.

### Encapsulation

Encapsulation is the concept of bundling the data (attributes) and methods (behaviors) that operate on the data into a single unit, i.e., a class. It also restricts direct access to some of the object's components.

### Constructor

A constructor is a special method that is called when an object is instantiated. It is used to initialize the object's properties.

## Running the Code

To run the Dart code, ensure you have Dart SDK installed on your system. Save the code in a file (e.g., `main.dart`) and execute the following command in your terminal:

```sh
dart main.dart
```

You should see the following output:

```
Nakuru
Dr john
40
Nairobi, Kenya
0712345678
My name is Dr john, I am 40 years old. My address is Nairobi, Kenya
```

## Summary

This project serves as a basic example to understand the foundational concepts of object-oriented programming in Dart. It demonstrates how to define a class, create an object, and encapsulate data and behavior within a class.