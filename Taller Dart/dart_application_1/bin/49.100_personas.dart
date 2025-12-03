void main() {
  List<List<int>> personas = [
    [1, 1, 1],
    [1, 1, 0],
    [1, 0, 1],
    [0, 1, 1],
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 1],
    [0, 0, 0],
  ];

  while (personas.length < 100) {
    personas.add(personas[personas.length % 8]);
  }

  int tresCorrectas = 0;
  int p1y2 = 0;
  int p1y3 = 0;
  int p2y3 = 0;
  int alMenosP1 = 0;
  int alMenosP2 = 0;
  int alMenosP3 = 0;
  int ninguna = 0;

  for (var p in personas) {
    int P1 = p[0];
    int P2 = p[1];
    int P3 = p[2];

    if (P1 == 1 && P2 == 1 && P3 == 1) tresCorrectas++;
    if (P1 == 1 && P2 == 1 && P3 == 0) p1y2++;
    if (P1 == 1 && P2 == 0 && P3 == 1) p1y3++;
    if (P1 == 0 && P2 == 1 && P3 == 1) p2y3++;
    if (P1 == 1) alMenosP1++;
    if (P2 == 1) alMenosP2++;
    if (P3 == 1) alMenosP3++;
    if (P1 == 0 && P2 == 0 && P3 == 0) ninguna++;
  }

  print("a) Tres correctas: $tresCorrectas");
  print("b) Solo P1 y P2: $p1y2");
  print("c) Solo P1 y P3: $p1y3");
  print("d) Solo P2 y P3: $p2y3");
  print("e) Al menos P1: $alMenosP1");
  print("f) Al menos P2: $alMenosP2");
  print("g) Al menos P3: $alMenosP3");
  print("h) Ninguna correcta: $ninguna");
}
