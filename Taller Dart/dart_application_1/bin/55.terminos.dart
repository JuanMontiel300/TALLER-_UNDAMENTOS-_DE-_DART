void main() {
  double suma = 0;
  int k = 1;
  while (true) {
    double termino = (k * k + 1) / k;
    if (suma + termino > 1000) break;
    suma += termino;
    k++;
  }
  int numeroTerminos = k - 1;
  print("El Número de términos: $numeroTerminos");
  print("-------------------------------------------");
  print("La Suma: $suma");
}
