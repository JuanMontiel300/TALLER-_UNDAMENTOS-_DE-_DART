void main() {
  int A = 5;
  int B = 2;
  int C = 3;
  int D = 5;

  if (D == 0) {
    int primeraecucuion = (A - C) * (A - C);
    print("D es igual a 0, el resultado es: $primeraecucuion");
  } else if (D > 0) {
    double segundaecuacion = ((A - B) * (A - B) * (A - B)) / D;
    print("D es mayor que 0, el resultado es: $segundaecuacion");
  } else {
    print("D no puede ser negativo para este ejercicio.");
  }
}
