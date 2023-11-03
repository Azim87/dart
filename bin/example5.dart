void main(List<String> args) {
  final Json json = {
    'name': 'Azim',
    'age': 33,
  };

  print(json);
}

typedef Json<T> = Map<String, T>;
