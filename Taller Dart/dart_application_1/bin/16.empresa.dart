void main() {
  double largo = 4;
  double ancho = 1.5;
  double areaPieza = 0.5;

  double areaLamina = largo * ancho;
  double piezas = areaLamina / areaPieza;
  double desperdicio = areaLamina - (piezas * areaPieza);

  print("Piezas que se pueden fabricar: $piezas");
  print("Desperdicio en metros cuadrados: $desperdicio");
}
