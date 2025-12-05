void main() {
  double lecturaAnterior = 3500;
  double lecturaActual = 3720;
  double costoKilovatio = 280;

  double consumo = lecturaActual - lecturaAnterior;
  double total = consumo * costoKilovatio;

  print("Kilovatios consumidos: $consumo");
  print("Total a pagar: $total");
}
