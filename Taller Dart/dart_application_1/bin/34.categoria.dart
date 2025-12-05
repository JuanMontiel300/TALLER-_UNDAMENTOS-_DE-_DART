void main() {
  int categoria = 3;
  double sueldo = 1000000;

  double aumento;

  if (categoria == 1) {
    aumento = sueldo * 0.15;
  } else if (categoria == 2) {
    aumento = sueldo * 0.10;
  } else if (categoria == 3) {
    aumento = sueldo * 0.08;
  } else {
    aumento = sueldo * 0.07;
  }

  double nuevoSueldo = sueldo + aumento;

  print("Categoría: $categoria");
  print("Nuevo sueldo: ${nuevoSueldo.toStringAsFixed(2)}");
}
