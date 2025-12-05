void main() {
  double capital = 50000;
  double interesesPagados = 20000;
  double tiempo = 4;

  double razon = (interesesPagados * 100) / (capital * tiempo);

  print("El porcentaje anual cobrado es: $razon%");
}
