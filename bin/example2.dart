void main() {
  print(doTypesMatch(1, 1));
  print(doTypesMatch(1, 'SSS'));
}

bool doTypesMatch<T1, T2>(T1 a, T2 b) => T1 == T2;
