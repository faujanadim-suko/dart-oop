void main(List<String> orgs) {
  Person person = Person.create();
  Person person2 = Person.create();
  print(person == person2);
}

class Person {
  Person();
  static final Person _person = Person();

  //untuk membuat factory constructor
  factory Person.create() {
    return _person;
  }
}
