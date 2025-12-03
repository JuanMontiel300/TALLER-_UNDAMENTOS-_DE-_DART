void main() {
  List<Map<String, dynamic>> ninos = [
    {"sexo": "M", "edad": 0, "orf": "SanJose", "estado": "Tachira"},
    {"sexo": "F", "edad": 2, "orf": "Hogar1", "estado": "Distrito"},
    {"sexo": "M", "edad": 5, "orf": "SanJose", "estado": "Tachira"},
    {"sexo": "F", "edad": 7, "orf": "Hogar2", "estado": "Zulia"},
    {"sexo": "M", "edad": 3, "orf": "Hogar1", "estado": "Distrito"},
    {"sexo": "F", "edad": 10, "orf": "Hogar3", "estado": "Caracas"},
    {"sexo": "M", "edad": 0, "orf": "Hogar4", "estado": "Tachira"},
  ];

  int total = ninos.length;
  int tachira = 0;
  int distrito = 0;

  int g1 = 0;
  int g2 = 0;
  int g3 = 0;
  int g4 = 0;

  int countM = 0;
  int countF = 0;

  for (var n in ninos) {
    String estado = n["estado"];
    int edad = n["edad"];
    String sexo = n["sexo"];

    if (estado.toLowerCase() == "tachira") tachira++;
    if (estado.toLowerCase().startsWith("distr")) distrito++;

    if (edad < 1)
      g1++;
    else if (edad <= 3)
      g2++;
    else if (edad <= 6)
      g3++;
    else
      g4++;

    if (sexo == "M")
      countM++;
    else if (sexo == "F")
      countF++;
  }

  double pctTachira = total == 0 ? 0 : (tachira * 100) / total;
  double pctDistrito = total == 0 ? 0 : (distrito * 100) / total;
  double pctM = total == 0 ? 0 : (countM * 100) / total;
  double pctF = total == 0 ? 0 : (countF * 100) / total;

  print("Total niños: $total");
  print("---------------------------------");
  print("Porcentaje Tachira: $pctTachira %");
  print("---------------------------------");
  print("Porcentaje Distrito: $pctDistrito %");
  print("---------------------------------");
  print("Grupo1 (<1): $g1");
  print("---------------------------------");
  print("Grupo2 (1-3): $g2");
  print("---------------------------------");
  print("Grupo3 (4-6): $g3");
  print("---------------------------------");
  print("Grupo4 (>6): $g4");
  print("---------------------------------");
  print("Niños (M): $countM => $pctM %");
  print("---------------------------------");
  print("Niñas (F): $countF => $pctF %");
}
