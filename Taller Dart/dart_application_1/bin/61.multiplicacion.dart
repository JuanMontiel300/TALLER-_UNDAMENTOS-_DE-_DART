void main() {
  int multiplicador = 25;
  int multiplicando = 7;

  int suma = 0;

  while (multiplicador >= 1) {
    if (multiplicador % 2 != 0) {
      suma += multiplicando;
    }

    multiplicador = multiplicador ~/ 2;
    multiplicando = multiplicando * 2;
  }

  print("El Resultado es: $suma");
}
