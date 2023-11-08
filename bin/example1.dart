void main(List<String> args) {
  tryCreatingPerson(age: 45);
  tryCreatingPerson(age: -1);
  tryCreatingPerson(age: 143);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (err) {
    print(err.runtimeType);
    print(err);
  }

  print('_' * 50);
}

class Person {
  final int age;

  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw Exception('Age must be positive');
    } else if (age > 140) {
      throw 'Age must be less than 140';
    } else {
      throw 'Age is valid';
    }
  }
}
