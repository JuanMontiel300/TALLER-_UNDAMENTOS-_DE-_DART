void main() {
  int producto1 = 20000;
  int producto2 = 10000;
  int producto3 = 5500;

  double descuento = 0.15;

  int Total = producto1 + producto2 + producto3;

  double valordescuento = Total * descuento;

  double totalcompra = Total - valordescuento;

  print("El Total de su compra es: $Total");

  print("-----------------------------------------");

  print("El descuento por la compra: $valordescuento");

  print("-----------------------------------------");

  print("El total de la compra es: $totalcompra");
}
