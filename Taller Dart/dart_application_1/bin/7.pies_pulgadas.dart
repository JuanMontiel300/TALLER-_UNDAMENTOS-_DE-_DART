void main() {
  int metro = 1;

  double pulgadas = metro * 39.27;

  int pies = pulgadas ~/ 12;

  double pulgadasretantes = pulgadas - (pies * 12);
  print("Un metreo en pulgadas es: $pulgadas");

  print("------------------------------------------------");

  print("Un pie: $pies");

  print("el restante en pulgadas es $pulgadasretantes");
}

