void main() {
  final int limitePorSemana = 500;

  List<Map<String, dynamic>> obreros = [
    {
      "nombre": "Pedro",
      "dias": [80, 85, 90, 70, 75, 60],
    },
    {
      "nombre": "María",
      "dias": [100, 110, 95, 105, 90, 120],
    },
    {
      "nombre": "Luis",
      "dias": [50, 60, 55, 65, 60, 70],
    },
    {
      "nombre": "Ana",
      "dias": [130, 120, 140, 135, 125, 130],
    },
  ];

  int contSuperaron = 0;
  String nombreMax = "";
  int maxProd = -1;
  int sumaTotal = 0;

  for (var o in obreros) {
    String nombre = o["nombre"] as String;
    List<int> dias = List<int>.from(o["dias"] ?? <int>[]);
    int total = 0;
    for (var d in dias) {
      total += d;
    }
    double porcentaje = (total / limitePorSemana) * 100;

    print("Obrero: $nombre");
    print("Producción semanal: $total");
    print("Porcentaje respecto al límite $limitePorSemana: ${porcentaje}%");
    print("-----------------------------");

    if (total >= limitePorSemana) contSuperaron++;
    if (total > maxProd) {
      maxProd = total;
      nombreMax = nombre;
    }
    sumaTotal += total;
  }

  double promedioBloquera = obreros.isEmpty ? 0 : sumaTotal / obreros.length;
  double porcentajeObrerosSuperaron = obreros.isEmpty
      ? 0
      : (contSuperaron / obreros.length) * 100;

  print(
    "Porcentaje de obreros que alcanzaron o superaron el límite: ${porcentajeObrerosSuperaron}%",
  );
  print("Obrero que más produjo: $nombreMax con $maxProd unidades");
  print(
    "Promedio de producción de la bloquera en la semana: $promedioBloquera",
  );
}
