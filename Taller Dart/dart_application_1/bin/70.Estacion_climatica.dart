void main() {
  List<List<int>> datos = [
    [20, 12],
    [25, 18],
    [32, 20],
    [10, 8],
    [14, 14],
    [28, 16],
    [0, 0],
  ];

  int dias = 0;
  int errores = 0;
  int sumaMax = 0;
  int sumaMin = 0;

  for (var p in datos) {
    int tmax = p[0];
    int tmin = p[1];
    if (tmax == 0 && tmin == 0) break;
    dias++;
    sumaMax += tmax;
    sumaMin += tmin;
    if (tmax < 14 || tmax > 30 || tmin < 14 || tmin > 30) errores++;
  }

  double mediaMax = dias == 0 ? 0 : sumaMax / dias;
  double mediaMin = dias == 0 ? 0 : sumaMin / dias;
  double porcentajeErrores = dias == 0 ? 0 : (errores * 100) / dias;

  print("Dias procesados: $dias");
  print("------------------------------------");
  print("Media maxima: $mediaMax");
  print("------------------------------------");
  print("Media minima: $mediaMin");
  print("------------------------------------");
  print("Errores (fuera de 14-30): $errores");
  print("------------------------------------");
  print("Porcentaje errores: $porcentajeErrores %");
}
