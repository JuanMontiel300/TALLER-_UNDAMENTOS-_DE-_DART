void main() {
  List<Map<String, dynamic>> personas = [
    {
      "nombre": "Juan",
      "antes": 82.0,
      "pesos": [82, 83, 81, 82, 82, 82, 83, 82, 81, 82],
    },
    {
      "nombre": "Ana",
      "antes": 68.0,
      "pesos": [67, 67, 66, 67, 67, 68, 67, 66, 67, 67],
    },
    {
      "nombre": "Luis",
      "antes": 90.0,
      "pesos": [92, 91, 90, 91, 92, 91, 90, 91, 92, 91],
    },
    {
      "nombre": "Maria",
      "antes": 74.0,
      "pesos": [73, 74, 75, 74, 74, 73, 74, 75, 74, 74],
    },
    {
      "nombre": "Pedro",
      "antes": 105.0,
      "pesos": [105, 104, 103, 104, 103, 104, 105, 104, 103, 104],
    },
  ];

  for (var p in personas) {
    double suma = 0;
    for (var x in p["pesos"]) suma += x;
    double promedio = suma / 10;
    double dif = promedio - p["antes"];

    if (dif > 0)
      print("${p["nombre"]} SUBIÓ ${dif.toStringAsFixed(2)} Kg");
    else
      print("${p["nombre"]} BAJÓ ${dif.abs().toStringAsFixed(2)} Kg");
  }
}
