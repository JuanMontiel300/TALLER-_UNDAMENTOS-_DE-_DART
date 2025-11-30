void main() {
  String nombre = "Juan";
  double monto = 8000;

  double descuento;

  if (monto < 500) {
    descuento = 0;
  } else if (monto <= 1000) {
    descuento = monto * 0.05;
  } else if (monto <= 7000) {
    descuento = monto * 0.11;
  } else if (monto <= 15000) {
    descuento = monto * 0.18;
  } else {
    descuento = monto * 0.25;
  }

  double total = monto - descuento;

  print("Cliente: $nombre");
  print("Monto de compra: $monto");
  print("Descuento aplicado: $descuento");
  print("Monto a pagar: $total");
}
