void main(List<String> args) {
  print(Car());
  print(Bike());
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() => '$runtimeType with wheels count $wheelCount';
}

class Car extends Vehicle {
  Car() : super(4);
}

class Bike extends Vehicle {
  Bike() : super(2);
}
