void main() {
  double temp = 50;

  String deporte;

  if (temp > 85) {
    deporte = "Natación";
  } else if (temp > 70) {
    deporte = "Tenis";
  } else if (temp > 32) {
    deporte = "Golf";
  } else if (temp > 10) {
    deporte = "Esquí";
  } else {
    deporte = "Marcha";
  }

  print("Temperatura: $temp°F");
  print("Deporte recomendado: $deporte");
}
