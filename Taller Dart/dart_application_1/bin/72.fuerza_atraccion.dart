void main() {
  const double G = 6.67259e-11;
  const double M = 5.97e24;

  List<Map<String, dynamic>> satelites = [
    {"nombre": "Canadá 1", "masa": 8300.0, "altura": 31200000.0},
    {"nombre": "Alfa 1", "masa": 5500.0, "altura": 36000000.0},
    {"nombre": "Bboy 4", "masa": 12000.0, "altura": 33450000.0},
    {"nombre": "Che 3", "masa": 3350.0, "altura": 34200000.0},
  ];

  double mayorF = double.negativeInfinity;
  double menorF = double.infinity;
  double sumaF = 0;
  double sumaM = 0;

  double mayorMasa = double.negativeInfinity;
  double menorAlt = double.infinity;
  double mayorAlt = double.negativeInfinity;

  for (Map<String, dynamic> s in satelites) {
    double r = s["altura"];
    double m = s["masa"];
    double F = G * (m * M) / (r * r);

    sumaF += F;
    sumaM += m;

    if (F > mayorF) mayorF = F;
    if (F < menorF) menorF = F;

    if (m > mayorMasa) mayorMasa = m;

    if (r < menorAlt) menorAlt = r;
    if (r > mayorAlt) mayorAlt = r;
  }

  print("Mayor fuerza de atracción: $mayorF");
  print("-----------------------------------------------");
  print("Menor fuerza de atracción: $menorF");
  print("-----------------------------------------------");
  print("Fuerza promedio: ${sumaF / satelites.length}");
  print("-----------------------------------------------");
  print("Mayor masa: $mayorMasa");
  print("-----------------------------------------------");
  print("Masa promedio: ${sumaM / satelites.length}");
  print("-----------------------------------------------");
  print("Menor altura: $menorAlt");
  print("-----------------------------------------------");
  print("Mayor altura: $mayorAlt");
}
