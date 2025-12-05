void main() {
  double pvp = 50000;

  double preciofijnal = 35000;

  double restar = pvp - preciofijnal;
  double descuento = (restar / pvp) * 100;

  print("El porcentaje de descuento aplicado es:$descuento");
}
