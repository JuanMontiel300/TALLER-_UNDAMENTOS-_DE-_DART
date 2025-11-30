void main() {
  int A = 2;
  int B = 3;
  int C = 6;
  int D = 2;

  int N = A * 1000 + B * 100 + C * 10 + D;

  int centenas = (N / 100).floor();
  int decenas = (N % 100) ~/ 10;

  int resultado;

  if (decenas >= 5) {
    resultado = (centenas + 1) * 100;
  } else {
    resultado = centenas * 100;
  }

  print("Número original: $N");
  print("Redondeado: $resultado");
}
