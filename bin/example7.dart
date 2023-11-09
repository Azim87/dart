void main(List<String> args) {
  Dog(isTired: false).run();

  try {
    Dog(isTired: true).run();
  } catch (e) {
    print(e);
  }
}

class DogIsTiredException implements Exception {
  final String message;
  DogIsTiredException([this.message = 'Poor dog is tired']);
}

class Dog {
  final bool isTired;

  Dog({
    required this.isTired,
  });

  void run() {
    if (isTired) {
      throw DogIsTiredException('Dog is tired...');
    } else {
      print('Dog is ready to run');
    }
  }
}
