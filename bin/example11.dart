void main(List<String> args) {
  const ints = [100, 5];
  const doubs = [100.0, 2.2, 3.6];

  print(ints.reduce(divide));
  print(doubs.reduce(divide));
}

T divide<T extends num>(T l, T r) {
  if (l is int && r is int) {
    return l ~/ r as T;
  } else {
    return l / r as T;
  }
}
