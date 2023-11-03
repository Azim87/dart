void main(List<String> args) {
  final tuple = Tuple(1, 20);

  final swap = tuple.toSwap();

  print(swap);

  print(tuple.toString());

  print(tuple.sum);
  print(swap.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;

  const Tuple(this.left, this.right);

  @override
  String toString() => 'Tuple, left: $left, rigth: $right';
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> toSwap() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
