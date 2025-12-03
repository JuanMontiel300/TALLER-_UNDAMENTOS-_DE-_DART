void main() {
  print("Números impares menores de 100 que NO son divisibles entre 7:");

  for (int i = 1; i < 100; i += 2) {
    if (i % 7 != 0) {
      print(i);
    }
  }
}
