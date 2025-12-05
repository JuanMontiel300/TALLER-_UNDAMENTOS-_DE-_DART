void main() {
  double valorCarro = 20000;
  double valorTerreno = 20000;

  double carro = valorCarro - (valorCarro * 0.10 * 3);
  double terreno = valorTerreno + (valorTerreno * 0.08 * 3);

  if (terreno - valorTerreno > (valorCarro - carro) / 2) {
    print("Comprar terreno");
  } else {
    print("Comprar automóvil");
  }
}
