void main(List<String> args) {
  final person = Person('John', 30);

  print(person.name);
  print(person.age);

  final foo = Person.foo();
  print(foo.name);
  print(foo.age);

  final bar = Person.bar(34);
  print(bar.name);
  print(bar.age);

  final other = Person.other(name: 'Azim');
  print(other.name);
  print(other.age);
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);

  const Person.foo()
      : name = 'Foo',
        age = 100;

  const Person.bar(this.age) : name = 'Bar';

  const Person.other({String? name, int? age})
      : name = name ?? 'Other name',
        age = age ?? 100;
}
