void main() {
  double M = 452;
  double N = 197;
  double B1 = 132;
  double B2 = 180;
  double B3 = 7.50;
  double B4 = 14.50;

  int bultosHarina = (M ~/ 24);
  double sobranteHarina = M % 24;

  double ingresoHarinaBultos = bultosHarina * B1;
  double ingresoHarinaSobrante = sobranteHarina * B3;

  int cajasAceite = (N ~/ 15);
  double sobranteAceite = N % 15;

  double ingresoAceiteCajas = cajasAceite * B2;
  double ingresoAceiteSobrante = sobranteAceite * B4;

  double total =
      ingresoHarinaBultos +
      ingresoHarinaSobrante +
      ingresoAceiteCajas +
      ingresoAceiteSobrante;

  print("Ingreso total: $total Bs");
}
