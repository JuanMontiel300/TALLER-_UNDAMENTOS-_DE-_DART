void main() {
  List<Map<String, dynamic>> personas = [
    {"edad": 8, "peso": 30.5},
    {"edad": 15, "peso": 50.0},
    {"edad": 25, "peso": 60.0},
    {"edad": 40, "peso": 70.0},
    {"edad": 65, "peso": 68.0},
    {"edad": 10, "peso": 32.0},
    {"edad": 55, "peso": 75.0},
    {"edad": 70, "peso": 63.0},
  ];

  while (personas.length < 100) {
    personas.add(personas[personas.length % 8]);
  }

  double sumaNinos = 0, sumaJovenes = 0, sumaAdultos = 0, sumaViejos = 0;
  int cNinos = 0, cJovenes = 0, cAdultos = 0, cViejos = 0;

  for (var p in personas) {
    int edad = p["edad"];
    double peso = p["peso"];

    if (edad >= 0 && edad <= 12) {
      sumaNinos += peso;
      cNinos++;
    } else if (edad <= 29) {
      sumaJovenes += peso;
      cJovenes++;
    } else if (edad <= 59) {
      sumaAdultos += peso;
      cAdultos++;
    } else {
      sumaViejos += peso;
      cViejos++;
    }
  }

  print("Promedio Ninos: ${cNinos == 0 ? 0 : sumaNinos / cNinos}");
  print("-------------------------------------------------------");
  print("Promedio Jovenes: ${cJovenes == 0 ? 0 : sumaJovenes / cJovenes}");
  print("-------------------------------------------------------");
  print("Promedio Adultos: ${cAdultos == 0 ? 0 : sumaAdultos / cAdultos}");
  print("-------------------------------------------------------");
  print("Promedio Viejos: ${cViejos == 0 ? 0 : sumaViejos / cViejos}");
}
