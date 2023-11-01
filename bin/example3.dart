void main(List<String> args) {
  const youAndMe = {
    'you': Person(),
    'me': Person(),
  };

  const heAndSheAndCat = {
    'he': Person(),
    'shw': Person(),
    'cat': Cat(),
  };

  final allValues = [
    heAndSheAndCat,
    youAndMe,
  ];

  describe(allValues);
}

typedef RunningThings<T extends CanRun> = Map<String, T>;

void describe(Iterable<RunningThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call run() on ${keyAndValue.key}');
      keyAndValue.value.run();
    }
  }
}

mixin CanRun {
  void run();
}

class Person with CanRun {
  const Person();

  @override
  void run() => print('Person is running...');
}

class Cat with CanRun {
  const Cat();

  @override
  void run() => print('Cat is running...');
}
