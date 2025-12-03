void main() {
  List<Map<String, dynamic>> estados = [
    {
      "nombre": "Estado A",
      "mun": [12000, 15000, 18000],
    },
    {
      "nombre": "Estado B",
      "mun": [22000, 17000, 16000, 14000],
    },
    {
      "nombre": "Estado C",
      "mun": [8000, 9000],
    },
    {
      "nombre": "Estado D",
      "mun": [30000, 28000, 26000],
    },
    {
      "nombre": "Estado E",
      "mun": [11000, 12500, 13200],
    },
  ];

  int totalPais = 2000000;

  String mayorNombre = "";
  int mayorCantidad = -1;

  String menorNombre = "";
  int menorCantidad = 999999999;

  int sumaEstados = 0;

  for (var e in estados) {
    int suma = 0;

    for (var m in e["mun"]) suma += m as int;

    if (suma > mayorCantidad) {
      mayorCantidad = suma;
      mayorNombre = e["nombre"];
    }

    if (suma < menorCantidad) {
      menorCantidad = suma;
      menorNombre = e["nombre"];
    }

    sumaEstados += suma;
  }

  double porcentaje = (sumaEstados * 100) / totalPais;
  double promedio = sumaEstados / estados.length;

  print("Estado con mayor población: $mayorNombre $mayorCantidad");
  print("Estado con menor población: $menorNombre $menorCantidad");
  print("Porcentaje respecto al total del país: $porcentaje%");
  print("Promedio de habitantes por estado: $promedio");
}
