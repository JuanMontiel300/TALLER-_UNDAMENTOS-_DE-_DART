void main() {
  int monto = 176380;

  List<int> billetes = [
    50000,
    20000,
    10000,
    5000,
    2000,
    1000,
    500,
    100,
    50,
    20,
    10,
  ];

  for (int b in billetes) {
    int cant = monto ~/ b;
    monto = monto % b;
    print("Billetes de $b: $cant");
  }
}
