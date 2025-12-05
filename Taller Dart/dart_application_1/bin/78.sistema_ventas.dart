void main() {
  const precios = {1: 20.0, 2: 30.0, 3: 40.0};

  List<Map<String, dynamic>> sucursales = [
    {
      "codigo": 10,
      "esperado": 50000.0,
      "puntos": [
        {
          "codigo": 1001,
          "ventas": [5, 8, 4],
        },
        {
          "codigo": 1002,
          "ventas": [10, 3, 6],
        },
      ],
    },
    {
      "codigo": 20,
      "esperado": 40000.0,
      "puntos": [
        {
          "codigo": 2001,
          "ventas": [7, 2, 9],
        },
        {
          "codigo": 2002,
          "ventas": [4, 5, 3],
        },
      ],
    },
  ];

  int sucursalesOk = 0;

  for (var s in sucursales) {
    double totalSucursal = 0;
    double mayorComision = -1;
    int puntoMayor = 0;

    for (var p in s["puntos"]) {
      var ventas = p["ventas"] as List<int>;

      int totalUnidades = ventas.fold(0, (a, b) => a + b);

      double bruto =
          ventas[0] * precios[1]! +
          ventas[1] * precios[2]! +
          ventas[2] * precios[3]!;

      double comision = bruto * 0.10;

      totalSucursal += bruto;

      if (comision > mayorComision) {
        mayorComision = comision;
        puntoMayor = p["codigo"];
      }

      int menorIndex = ventas.indexOf(ventas.reduce((a, b) => a < b ? a : b));

      print("Punto ${p["codigo"]}");
      print("Unidades vendidas: $totalUnidades");
      print("Monto neto: $bruto");
      print("Comisión: $comision");
      print("Producto menos vendido: ${menorIndex + 1}\n");
      print("-------------------------------------------------");
    }

    double porcentaje = (totalSucursal / s["esperado"]) * 100;
    if (totalSucursal >= s["esperado"]) sucursalesOk++;

    print("Sucursal ${s["codigo"]}");
    print("Total vendido: $totalSucursal");
    print("Porcentaje alcanzado: $porcentaje");
    print("Punto mayor comisión: $puntoMayor con $mayorComision\n");
  }

  double porcentajeSucursales = (sucursalesOk / sucursales.length) * 100;
  print(
    "Porcentaje de sucursales que alcanzaron la meta: $porcentajeSucursales%",
  );
}
