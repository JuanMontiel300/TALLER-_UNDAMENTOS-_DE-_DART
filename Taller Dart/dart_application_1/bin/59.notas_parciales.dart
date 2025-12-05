void main() {
  List<Map<String, dynamic>> alumnos = [
    {"mat": 12.0, "prog": 14.0, "ing": 15.0},
    {"mat": 9.0, "prog": 8.0, "ing": -1.0},
    {"mat": 16.0, "prog": 18.0, "ing": 17.0},
    {"mat": 11.0, "prog": 10.0, "ing": 12.0},
    {"mat": 7.0, "prog": 9.0, "ing": -1.0},
  ];

  int total = alumnos.length;
  double menorProg = alumnos[0]["prog"];
  int sinEnglish = 0;
  int aprobarTodas = 0;
  double sumaProg = 0;
  int presentaronMat = 0;
  int reprobarMat = 0;

  for (var a in alumnos) {
    double mat = a["mat"];
    double prog = a["prog"];
    double ing = a["ing"];

    if (prog < menorProg) menorProg = prog;
    sumaProg += prog;

    if (ing < 0) sinEnglish++;

    bool aproboMat = mat >= 10.0;
    bool aproboProg = prog >= 10.0;
    bool aproboIng = ing >= 10.0;
    if (aproboMat && aproboProg && aproboIng) aprobarTodas++;

    if (mat >= 0) {
      presentaronMat++;
      if (!aproboMat) reprobarMat++;
    }
  }

  double promedioProg = sumaProg / total;
  double porcentajeNoPresentaronIng = sinEnglish / total * 100.0;
  double porcentajeReprobarMat = presentaronMat == 0
      ? 0
      : reprobarMat / presentaronMat * 100.0;

  print("La Nota menor de Programación: $menorProg");
  print("--------------------------------------------------------------");
  print("El Porcentaje no presentaron inglés: $porcentajeNoPresentaronIng%");
  print("--------------------------------------------------------------");
  print("El Número que aprobaron todas: $aprobarTodas");
  print("--------------------------------------------------------------");
  print("El Promedio general en Programación: $promedioProg");
  print("--------------------------------------------------------------");
  print("El  Porcentaje reprobaron Matemática: $porcentajeReprobarMat%");
}
