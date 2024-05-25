void main() {
  // main
  Person person = Person('john', 40);
  print(person.address);
}

class Person {
  String name;
  int age;
  String? address;

  Person(this.name, this.age, [this.address = 'Kite']);
}
