void main() {
  final double? doubleValue = eitherIntOrDouble();
  print(doubleValue);

  final int? intValue = eitherIntOrDouble();
  print(intValue);
}

T? eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;

    case double:
      return 1.1 as T;
    default:
      return null;
  }
}
