void main() {
  List<Map<String, int>> empresas = [
    {"actividad": 1, "loc": 1, "trab": 20},
    {"actividad": 3, "loc": 2, "trab": 50},
    {"actividad": 2, "loc": 2, "trab": 40},
    {"actividad": 1, "loc": 3, "trab": 15},
    {"actividad": 2, "loc": 2, "trab": 30},
  ];

  int total = empresas.length;
  int agricola = 0;
  int mineraSur = 0;
  int totalMinera = 0;

  int trabAgri = 0, trabMin = 0, trabPes = 0, trabOtr = 0;
  int indNorte = 0, indSur = 0, indEste = 0, indOeste = 0;

  for (var e in empresas) {
    int act = e["actividad"]!;
    int loc = e["loc"]!;
    int trab = e["trab"]!;

    if (act == 1) agricola++;
    if (act == 3) {
      totalMinera++;
      if (loc == 2) mineraSur++;
    }

    if (act == 1) trabAgri += trab;
    if (act == 3) trabMin += trab;
    if (act == 4) trabPes += trab;
    if (act == 5) trabOtr += trab;

    if (act == 2) {
      if (loc == 1) indNorte++;
      if (loc == 2) indSur++;
      if (loc == 3) indEste++;
      if (loc == 4) indOeste++;
    }
  }

  print("Porcentaje de agrícolas: ${(agricola * 100) / total}%");
  print("----------------------------------------------------------------");
  print("Porcentaje mineras del sur: ${(mineraSur * 100) / totalMinera}%");
  print("----------------------------------------------------------------");
  print(
    "Promedio trabajadores agrícolas: ${trabAgri / (agricola == 0 ? 1 : agricola)}",
  );
  print("----------------------------------------------------------------");

  int maximo = [
    indNorte,
    indSur,
    indEste,
    indOeste,
  ].reduce((a, b) => a > b ? a : b);

  if (maximo == indNorte) print("El Norte");
  if (maximo == indSur) print("El Sur");
  if (maximo == indEste) print("El Este");
  if (maximo == indOeste) print("El Oeste");
}
