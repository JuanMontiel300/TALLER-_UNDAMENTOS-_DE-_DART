void main() {
  String nombre = 'Juan';
  double horasNormales = 48;
  double pagoHora = 15000;
  double horasExtras = 12;

  double sueldoBase = horasNormales * pagoHora;
  double valorHoraExtra = pagoHora * 1.25;
  double pagoHorasExtras = horasExtras * valorHoraExtra;

  double paroForzoso = sueldoBase * 0.05;
  double politicaHabitacional = sueldoBase * 0.02;
  double cajaAhorro = sueldoBase * 0.07;

  double deducciones = paroForzoso + politicaHabitacional + cajaAhorro;

  double actualizacionAcademica = 25000;
  double hijos = 2;
  double asignacionPorHijos = hijos * 17300;
  double primaHogar = 18000;

  double asignaciones =
      actualizacionAcademica +
      asignacionPorHijos +
      primaHogar +
      pagoHorasExtras;
  double sueldoNeto = sueldoBase - deducciones + asignaciones;

  print("Me llamo $nombre este es mi sueldo base: $sueldoBase");
  print("Pago horas extras: $pagoHorasExtras");
  print("Asignaciones: $asignaciones");
  print("Deducciones: $deducciones");
  print("Sueldo neto: $sueldoNeto");
}
