void main(List<String> args) {
  final person = Person(name: 'John', age: 33);
  print(person.name);
  print(person.age);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}
