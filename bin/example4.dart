void main(List<String> args) {
  final person = Person(firstName: 'Azim', lastName: 'Kubatov');
  print(person.fullName);
}

class Person {
  final String firstName;
  final String lastName;

  String get fullName {
    print('$firstName $lastName');
    return 'full name is $firstName $lastName';
  }

  const Person({required this.firstName, required this.lastName});
}
