void main(List<String> args) {
  print(Dad().role);
  print(Mom().role);
}

enum Role { mom, dad, son }

class Person {
  final Role role;

  Person({required this.role});
}

class Mom extends Person {
  Mom() : super(role: Role.mom);
}

class Dad extends Person {
  Dad() : super(role: Role.dad);
}
