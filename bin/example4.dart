void main(List<String> args) async {
  final dataBase = Database();

  try {
    //await dataBase.open();
    final data = await dataBase.getData();
    print(data);
  } on DatabaseNotOpenException catch (err) {
    print(err);
  } finally {
    await dataBase.close();
  }
}

class Database {
  bool _isDbOpen = false;

  Future<void> open() => Future.delayed(
        const Duration(seconds: 3),
        () {
          _isDbOpen = true;
          print('db is open');
        },
      );

  Future<String> getData() {
    if (!_isDbOpen) throw DatabaseNotOpenException();
    return Future.delayed(const Duration(seconds: 3), () => 'datat');
  }

  Future<void> close() => Future.delayed(
        const Duration(seconds: 1),
        () {
          _isDbOpen = false;
          print('db is closed');
        },
      );
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'DatabaseNotOpenException';
}
