void main() {
  List<Map<String, dynamic>> pasajeros = [
    {
      "vuelo": "A1",
      "abordo": "X01",
      "nombre": "Ana",
      "maletas": [2.5, 7.0, 10.5],
    },
    {
      "vuelo": "A1",
      "abordo": "X02",
      "nombre": "Luis",
      "maletas": [4.0],
    },
    {"vuelo": "A1", "abordo": "X03", "nombre": "Maria", "maletas": []},
  ];

  double totalVuelo = 0;
  int sinEquipaje = 0;

  for (var p in pasajeros) {
    List maletas = p["maletas"];
    if (maletas.isEmpty) sinEquipaje++;

    double totalPeso = 0;
    double maletaMayor = 0;

    for (double m in maletas) {
      totalPeso += m;
      if (m > maletaMayor) maletaMayor = m;
    }

    double tarifa = 0;
    if (totalPeso > 15)
      tarifa = totalPeso * 2500;
    else if (totalPeso > 12)
      tarifa = totalPeso * 2000;
    else if (totalPeso > 9)
      tarifa = totalPeso * 1500;
    else if (totalPeso > 6)
      tarifa = totalPeso * 1200;
    else if (totalPeso > 3)
      tarifa = totalPeso * 600;

    totalVuelo += tarifa;

    print(
      "${p['vuelo']} ${p['abordo']} ${p['nombre']} - Peso: $totalPeso - Pago: $tarifa - Mayor maleta: $maletaMayor",
    );
  }

  double porcentajeSin = sinEquipaje * 100 / pasajeros.length;

  print("El Total cancelado por equipaje en el vuelo: $totalVuelo");
  print("------------------------------------------------------------");
  print("El Porcentaje de pasajeros sin equipaje: $porcentajeSin%");
}
