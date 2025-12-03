import 'dart:math';

void main() {
  List<List<int>> cuestionarios = [];

  for (int i = 0; i < 64; i++) {
    List<int> respuestas = [];
    for (int j = 0; j < 23; j++) {
      respuestas.add(Random().nextInt(5) + 1);
    }
    cuestionarios.add(respuestas);
  }

  List<double> promedios = [];

  for (var c in cuestionarios) {
    int suma = 0;
    for (var p in c) {
      suma += p;
    }
    double prom = suma / 23;
    promedios.add(prom);
  }

  double sumaGeneral = 0;
  for (var p in promedios) sumaGeneral += p;
  double promedioGeneral = sumaGeneral / promedios.length;

  double mayor = promedios[0];
  int posMayor = 1;

  double menor = promedios[0];
  int posMenor = 1;

  for (int i = 1; i < promedios.length; i++) {
    if (promedios[i] > mayor) {
      mayor = promedios[i];
      posMayor = i + 1;
    }
    if (promedios[i] < menor) {
      menor = promedios[i];
      posMenor = i + 1;
    }
  }

  int menorQue3 = 0;
  int mayorQue4 = 0;
  int entre45y5 = 0;

  for (var p in promedios) {
    if (p < 3) menorQue3++;
    if (p > 4) mayorQue4++;
    if (p >= 4.5 && p <= 5) entre45y5++;
  }

  double porcentajeA = mayorQue4 == 0 ? 0 : (menorQue3 * 100) / mayorQue4;
  double porcentajeB = (entre45y5 * 100) / 64;

  print("Promedio general: $promedioGeneral");
  print("-------------------------------------------------------");
  print("Promedio más alto: $mayor en cuestionario $posMayor");
  print("-------------------------------------------------------");
  print("Promedio más bajo: $menor en cuestionario $posMenor");
  print("-------------------------------------------------------");
  print("Porcentaje (<3 respecto >4): $porcentajeA%");
  print("-------------------------------------------------------");
  print("Porcentaje (promedio entre 4.5 y 5): $porcentajeB%");
}
