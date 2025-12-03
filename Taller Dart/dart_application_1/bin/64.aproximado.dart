void main() {
  double suma = 0;
  double termino = 1;
  int contador = 0;

  while (suma + termino <= 1.99) {
    suma += termino;
    termino /= 2;
    contador++;
  }

  print("Los Términos necesarios: $contador");
  print("--------------------------------");
  print("La Suma obtenida: $suma");
}
