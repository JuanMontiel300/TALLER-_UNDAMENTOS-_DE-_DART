void main() {
  int lecturaAnterior = 500;
  int lecturaActual = 650;

  int consumo = lecturaActual - lecturaAnterior;
  double costo;

  if (consumo <= 100) {
    costo = consumo * 2622;
  } else if (consumo <= 300) {
    costo = consumo * 79.78;
  } else if (consumo <= 500) {
    costo = consumo * 89.52;
  } else {
    costo = consumo * 97.95;
  }

  print("Consumo: $consumo kWh");
  print("Monto a pagar: $costo Bs");
}
