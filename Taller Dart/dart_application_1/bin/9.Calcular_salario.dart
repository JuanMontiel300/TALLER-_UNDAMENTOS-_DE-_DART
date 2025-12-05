void main() {
  double horastrabajadas = 20;
  double preciohoras = 20000;

  double sueldobase = horastrabajadas * preciohoras;

  double descuento = sueldobase * 0.20;

  double salarioneto = sueldobase - descuento;

  print("El sueldo base es: $sueldobase");
  print("----------------------------------------");

  print("El descuento del 20% es: $descuento");
  print("----------------------------------------");

  print("El salario neto que recibe el trabajador es: $salarioneto");
}
