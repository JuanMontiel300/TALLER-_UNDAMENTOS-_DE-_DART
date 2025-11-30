void main() {
  double P = 2200000;
  double T = 150000;

  double totalCuotas = 12 * T;
  double recargo = totalCuotas - P;
  double porcentaje = (recargo / P) * 100;

  print("Precio de contado: $P Bs");
  print("Total pagando por cuotas: $totalCuotas Bs");
  print("Recargo: $recargo Bs");
  print("Porcentaje de recargo: $porcentaje %");
}
