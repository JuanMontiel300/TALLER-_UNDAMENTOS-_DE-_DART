void main() {
  double galones = 10;
  double litrosPorGalon = 3.785;
  double precioLitro = 100;

  double litros = galones * litrosPorGalon;
  double totalPagar = litros * precioLitro;

  print(
    "El cliente compró $galones galones y debe pagar $totalPagar Bolivares",
  );
}
