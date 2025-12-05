import 'dart:math';

void main() {
  double a = 10;
  double b = 15;
  double c = 17;

  double sumarlados = (a + b + c) / 2;

  double aretriangulo = sqrt(
    sumarlados * (sumarlados - a) * (sumarlados - b) * (sumarlados - c),
  );

  print("El are de un triangulo es : $aretriangulo");
}
