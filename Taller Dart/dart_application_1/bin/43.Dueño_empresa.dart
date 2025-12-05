void main() {
  double capital = -5000;

  double nuevoSaldo;
  double prestamo = 0;

  if (capital < 0) {
    prestamo = 10000 - capital;
    nuevoSaldo = 10000;
  } else if (capital < 20000) {
    prestamo = 20000 - capital;
    nuevoSaldo = 20000;
  } else {
    nuevoSaldo = capital;
  }

  double equipo = 5000;
  double mobiliario = 2000;
  double resto = nuevoSaldo - 7000;
  double insumos = resto / 2;
  double incentivos = resto / 2;

  print("Equipo: $equipo");
  print("Mobiliario: $mobiliario");
  print("Insumos: $insumos");
  print("Incentivos: $incentivos");
  print("Préstamo solicitado: $prestamo");
}
