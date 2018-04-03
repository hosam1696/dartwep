class Person {
  int age;
  String name;
  Person(this.name, this.age) {}

  String get logName {
    return 'Name: $name ,Age $age';
  }
}

