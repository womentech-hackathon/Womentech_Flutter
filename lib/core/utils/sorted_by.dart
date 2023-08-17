extension SortedBy<E> on List<E> {
  List<E> sortedBy([int Function(E a, E b)? compare]) {
    return List<E>.from(this)..sort(compare);
  }
}
