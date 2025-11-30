void main() {
  double valor1 = 5;
  double valor2 = 7;
  double valor3 = 35;

  double areaTriangulo = (valor1 * valor2) / 2;
  double areaCirculo = valor2 * (valor1 * valor1);
  double areaRectangulo = valor1 * valor2;

  if (areaTriangulo == valor3) {
    print("Triángulo");
  } else if (areaCirculo == valor3) {
    print("Círculo");
  } else if (areaRectangulo == valor3) {
    print("Rectángulo");
  } else {
    print("Ninguna figura coincide");
  }
}
