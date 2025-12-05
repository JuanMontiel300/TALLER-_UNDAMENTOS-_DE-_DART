void main() {
  int dividendo = 8;
  int divisor = 2;

  int resto = dividendo;
  int cociente = 0;

  while (resto >= divisor) {
    resto -= divisor;
    cociente++;
  }

  print("El Dividendo: $dividendo");
  print("---------------------------------");
  print("El Divisor: $divisor");
  print("---------------------------------");
  print("El Cociente: $cociente");
  print("---------------------------------");
  print("El Resto: $resto");
}
