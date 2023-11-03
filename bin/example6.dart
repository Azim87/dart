void main(List<String> args) {
  final person = Person(height: 170);
  final dog = Dog(height: 1.1);

  print(person.height);
  print(dog.height);
}

typedef HasIntHeight = HasHight<int>;
typedef HasDoubleHeight = HasHight<double>;

class Person with HasIntHeight {
  @override
  final int height;

  const Person({required this.height});
}

class Dog with HasDoubleHeight {
  @override
  final double height;

  const Dog({required this.height});
}

mixin HasHight<H extends num> {
  H get height;
}
