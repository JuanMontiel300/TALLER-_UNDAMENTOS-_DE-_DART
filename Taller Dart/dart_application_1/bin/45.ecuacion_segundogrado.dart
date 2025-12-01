import 'dart:math';

void main() {
  double A = 1;
  double B = -3;
  double C = 2;

  double D = B * B - 4 * A * C;

  if (D == 0) {
    double X = -B / (2 * A);
    print("X1 = X2 = ${X.toStringAsFixed(2)}");
  } else if (D > 0) {
    double X1 = (-B + sqrt(D)) / (2 * A);
    double X2 = (-B - sqrt(D)) / (2 * A);
    print("X1 = $X1");
    print("X2 = $X2");
  } else {
    print("No tiene solución en los reales");
  }
}
