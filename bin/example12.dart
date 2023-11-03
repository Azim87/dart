void main(List<String> args) {
  print(Person<int>(age: 20).ageRounded);
  print(Person<double>(age: 21.3).ageRounded);
}

class Person<T extends num> {
  final T age;

  const Person({required this.age});

  int get ageRounded => age.round();
}
