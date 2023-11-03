void main(List<String> args) {
  sort(ascending: true);
  print('=' * 100);
  sort(ascending: false);
}

const ages = [100, 3, 32, 55, 50, 90, 30];
const names = ['Foo', 'Nar', 'Bar'];
const distances = [21, 1, 42, 2, 10, 0, 5.0];

void sort({required bool ascending}) {
  final c = ascending ? isLessThan : isGreaterThan;

  print([...ages]..sort(c));
  print([...names]..sort(c));
  print([...distances]..sort(c));
}

int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int isGreaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);
