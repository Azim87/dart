void main(List<String> args) {
  // final p1 = Person();
  // p1.name = 'p1';
  // print(p1.name);

  // final p2 = Person();
  // p2.name = 'p2';
  // print(p2.name);

  // StaticPerson.name = 's1';
  // print(StaticPerson.name);

  // StaticPerson.name = 's2';
  // print(StaticPerson.name);

  final car1 = Car(name: 'car1');

  print(car1.name);
  print(Car.carsInstantiated);
}

class Person {
  String name = '';
}

class StaticPerson {
  static String name = '';
}

class Car {
  final String name;

  static int _carInstantiatedCount = 0;

  Car({
    required this.name,
  }) {
    _incrementCarInstantiated();
  }

  static void _incrementCarInstantiated() => _carInstantiatedCount++;

  static int get carsInstantiated => _carInstantiatedCount;
}
