void main() {
  int salario = 1000000;
  double comision = 0.10;

  int venta1 = 100000;
  int venta2 = 250000;
  int venta3 = 50000;

  print("--------------------------------------------------------------------");
  int ventames = venta1 + venta2 + venta3;
  double comisionventas = ventames * comision;
  print("La comision en total por la ventas en el mes es: $comisionventas ");
  print(
    "----------------------------------------------------------------------",
  );
  double totalsalario = salario + comisionventas;
  print("El salario total mas comison es: $totalsalario");
}
