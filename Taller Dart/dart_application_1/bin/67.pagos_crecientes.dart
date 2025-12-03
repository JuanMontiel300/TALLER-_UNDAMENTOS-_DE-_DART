void main() {
  int deuda = 12775;
  int pago = 100;
  int diferencia = 125;

  int suma = 0;
  int numeroPagos = 0;

  while (suma + pago <= deuda) {
    suma += pago;
    numeroPagos++;
    print("Pago $numeroPagos: $pago  |  Pendiente: ${deuda - suma}");
    pago += diferencia;
  }

  print("El Número total de pagos: $numeroPagos");
  print("---------------------------------------------");
  print("El Monto del último pago: ${pago - diferencia}");
}
