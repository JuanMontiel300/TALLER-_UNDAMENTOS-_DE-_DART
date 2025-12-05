void main() {
  int km = 1200;

  int pago;

  if (km <= 300) {
    pago = 5000;
  } else if (km <= 1000) {
    pago = 5000 + (km - 300) * 200;
  } else {
    pago = 5000 + (1000 - 300) * 200 + (km - 1000) * 150;
  }

  print("El cliente debe pagar: $pago Bolívares");
}
