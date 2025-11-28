void main() {
  int hombres = 35;
  int mujeres = 25;

  int grupo = hombres + mujeres;

  double porcentajehombres = (hombres / grupo) * 100;

  double porcentajemujeres = (mujeres / grupo) * 100;

  print("El porcentaje de hombres que hay en el grupo: $porcentajehombres");

  print(
    "----------------------------------------------------------------------",
  );

  print("El porcentaje de mujeres que hay en el grupo: $porcentajemujeres");
}
