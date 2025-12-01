void main() {
  double metros = 2000000;

  double pino;
  double oyamel;
  double cedro;

  if (metros > 1000000) {
    pino = metros * 0.70 / 10 * 8;
    oyamel = metros * 0.20 / 15 * 15;
    cedro = metros * 0.10 / 18 * 10;
  } else {
    pino = metros * 0.50 / 10 * 8;
    oyamel = metros * 0.30 / 15 * 15;
    cedro = metros * 0.20 / 18 * 10;
  }

  print("Pinos: ${pino.toInt()}");
  print("Oyamel: ${oyamel.toInt()}");
  print("Cedros: ${cedro.toInt()}");
}
