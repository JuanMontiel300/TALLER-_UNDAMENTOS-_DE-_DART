import 'dart:math';

void main() {
  double A = 5;
  double B = 5;
  double C = 8;

  if (A + B > C && A + C > B && B + C > A) {
    String tipo;

    if (A == B && B == C) {
      tipo = "Equilátero";
    } else if (A == B || A == C || B == C) {
      tipo = "Isósceles";
    } else {
      tipo = "Escaleno";
    }

    double S = (A + B + C) / 2;
    double area = sqrt(S * (S - A) * (S - B) * (S - C));

    print("Tipo: $tipo");
    print("Área: $area");
  } else {
    print("No es un triángulo");
  }
}
