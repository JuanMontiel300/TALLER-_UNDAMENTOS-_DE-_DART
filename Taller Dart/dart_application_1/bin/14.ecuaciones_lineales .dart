void main() {
  double a = 2, b = 4, c = 3, d = 5, e = 7, f = 6;

  double x = (c * e - b * f) / (a * e - b * d);
  double y = (a * f - c * d) / (a * e - b * d);

  print("El valor de x es : $x");
  print("El valor de y es : $y");
}
