void main(List<String> args) {
  final one = KeyValue(1, 1);
  print(one);

  final two = KeyValue(1, 'foo');
  print(two);
}

typedef KeyValue<T, K> = MapEntry<T, K>;
