void main() {
  List<Map<String, dynamic>> datos = [
    {
      "estado": 10,
      "ciudad": 1010,
      "municipio": 101001,
      "personas": [
        {"edad": 30, "edu": "N", "sit": "D"},
        {"edad": 40, "edu": "B", "sit": "E"},
        {"edad": 28, "edu": "N", "sit": "D"},
      ],
    },
    {
      "estado": 10,
      "ciudad": 1011,
      "municipio": 101101,
      "personas": [
        {"edad": 50, "edu": "P", "sit": "D"},
        {"edad": 22, "edu": "B", "sit": "E"},
        {"edad": 35, "edu": "P", "sit": "D"},
      ],
    },
    {
      "estado": 20,
      "ciudad": 2020,
      "municipio": 202001,
      "personas": [
        {"edad": 45, "edu": "N", "sit": "D"},
        {"edad": 33, "edu": "S", "sit": "E"},
        {"edad": 41, "edu": "P", "sit": "D"},
      ],
    },
  ];

  Map<int, int> casosMunicipio = {};
  Map<int, int> totalMunicipio = {};

  Map<int, int> casosCiudad = {};
  Map<int, int> totalCiudad = {};

  Map<int, int> profDesemp = {};
  Map<int, int> totalEstado = {};

  for (var registro in datos) {
    int municipio = registro["municipio"];
    int ciudad = registro["ciudad"];
    int estado = registro["estado"];

    for (var p in registro["personas"]) {
      // Contadores globales
      totalMunicipio[municipio] = (totalMunicipio[municipio] ?? 0) + 1;
      totalCiudad[ciudad] = (totalCiudad[ciudad] ?? 0) + 1;
      totalEstado[estado] = (totalEstado[estado] ?? 0) + 1;

      bool cumple = p["sit"] == "D" && p["edu"] == "N" && p["edad"] > 25;

      if (cumple) {
        casosMunicipio[municipio] = (casosMunicipio[municipio] ?? 0) + 1;
        casosCiudad[ciudad] = (casosCiudad[ciudad] ?? 0) + 1;
      }

      if (p["edu"] == "P" && p["sit"] == "D") {
        profDesemp[estado] = (profDesemp[estado] ?? 0) + 1;
      }
    }
  }

  print("Resultados por municipio:");
  casosMunicipio.forEach((mun, cant) {
    print("Municipio $mun: $cant personas cumplen las condiciones");
  });

  print("\nCiudades con más del 50% de casos:");
  casosCiudad.forEach((ciu, cant) {
    int total = totalCiudad[ciu]!;
    if (cant > total / 2) {
      print("Ciudad $ciu supera el 50%");
    }
  });

  print("\nEstado con mayor porcentaje de profesionales desempleados:");

  double mayorPorc = -1;
  int estadoMayor = 0;

  profDesemp.forEach((est, cant) {
    double porc = (cant / totalEstado[est]!) * 100;
    if (porc > mayorPorc) {
      mayorPorc = porc;
      estadoMayor = est;
    }
  });

  print("$estadoMayor con ${mayorPorc.toStringAsFixed(2)}%");
}
