void main() {
  double sueldo = 35000;

  double aumento;

  if (sueldo < 40000) {
    aumento = sueldo * 0.15;
  } else {
    aumento = sueldo * 0.12;
  }

  double nuevoSueldo = sueldo + aumento;

  print("El nuevo sueldo es: $nuevoSueldo");
}
