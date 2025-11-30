void main() {
  double salario = 1000000;
  double dep1 = 3000000;
  double dep2 = 2000000;
  double dep3 = 1000000;

  double total = dep1 + dep2 + dep3;
  double limite = total * 0.33;

  double pago1 = salario;
  double pago2 = salario;
  double pago3 = salario;

  if (dep1 > limite) pago1 = salario + (salario * 0.20);
  if (dep2 > limite) pago2 = salario + (salario * 0.20);
  if (dep3 > limite) pago3 = salario + (salario * 0.20);

  print("Departamento 1 recibe: ${pago1.toStringAsFixed(2)}");
  print("Departamento 2 recibe: ${pago2.toStringAsFixed(2)}");
  print("Departamento 3 recibe: ${pago3.toStringAsFixed(2)}");
}
