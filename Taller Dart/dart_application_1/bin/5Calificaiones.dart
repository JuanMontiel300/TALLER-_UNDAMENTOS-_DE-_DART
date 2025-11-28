void main() {
  double parcial1 = 30;
  double parcial2 = 40;
  double parcial3 = 20;

  double sumanotas = (parcial1 + parcial2 + parcial3) / 3;
  double promodionotas = sumanotas * 0.55;

  print("El promedio de sus parciales es: $promodionotas");
  print("------------------------------------------------------");

  double examenfinal = 35;
  double promediofinal = examenfinal * 0.30;

  print("El examen final fue de: $promediofinal");
  print("------------------------------------------------------");

  double trabajofinal = 40;
  double promediotrabajo = trabajofinal * 0.15;

  print("El trabajo final es: $promediotrabajo");
  print("------------------------------------------------------");

  double calificacionfinal = promodionotas + promediofinal + promediotrabajo;

  print("El total de la calificación final es: $calificacionfinal");
}
