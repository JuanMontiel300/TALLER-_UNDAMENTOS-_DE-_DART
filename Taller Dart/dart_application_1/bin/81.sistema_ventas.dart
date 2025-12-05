void main() {
  List<Map<String, dynamic>> datos = [
    {
      "estado": 10,
      "nomEstado": "Lara",
      "ciudad": 1010,
      "nomCiudad": "Barquisimeto",
      "meta": 500,
      "canales": [
        {
          "canal": 1100,
          "vendedores": [
            {"cod": 11123, "uni": 120, "monto": 2400.0},
            {"cod": 12150, "uni": 80, "monto": 1600.0},
          ],
        },
        {
          "canal": 1101,
          "vendedores": [
            {"cod": 11190, "uni": 100, "monto": 2000.0},
            {"cod": 12133, "uni": 60, "monto": 1200.0},
          ],
        },
      ],
    },
    {
      "estado": 20,
      "nomEstado": "Zulia",
      "ciudad": 2020,
      "nomCiudad": "Maracaibo",
      "meta": 800,
      "canales": [
        {
          "canal": 2200,
          "vendedores": [
            {"cod": 11110, "uni": 200, "monto": 4000.0},
            {"cod": 12177, "uni": 150, "monto": 3000.0},
          ],
        },
      ],
    },
  ];

  Map<int, double> montoEstado = {};
  Map<int, int> noCumplen = {};
  Map<int, int> ciudades40_60 = {};

  print("Reporte por Ciudad ");
  print("-----------------------------------");

  for (var d in datos) {
    int ciudad = d["ciudad"];
    String nomCiudad = d["nomCiudad"];
    int meta = d["meta"];

    int totalUni = 0;
    double totalMonto = 0;
    double comTienda = 0;
    double comCalle = 0;

    int canalMayor = 0;
    double mayorVenta = -1;

    int vendMenos = 0;
    int menorUni = 999999;

    for (var canal in d["canales"]) {
      int codCanal = canal["canal"];
      double netoCanal = 0;

      for (var v in canal["vendedores"]) {
        int uni = v["uni"] as int;
        double monto = v["monto"] as double;

        totalUni += uni;
        totalMonto += monto;

        if (v["cod"].toString().startsWith("11")) {
          comTienda += monto * 0.10;
        } else {
          comCalle += monto * 0.15;
        }

        netoCanal += monto;

        if (uni < menorUni) {
          menorUni = uni;
          vendMenos = v["cod"];
        }
      }

      if (netoCanal > mayorVenta) {
        mayorVenta = netoCanal;
        canalMayor = codCanal;
      }
    }

    montoEstado[d["estado"]] = (montoEstado[d["estado"]] ?? 0) + totalMonto;

    if (totalUni < meta) {
      noCumplen[d["estado"]] = (noCumplen[d["estado"]] ?? 0) + 1;
    }

    if (totalUni >= meta * 1.40 && totalUni <= meta * 1.60) {
      ciudades40_60[d["estado"]] = (ciudades40_60[d["estado"]] ?? 0) + 1;
    }

    print("\nCiudad $ciudad - $nomCiudad");
    print("Unidades totales: $totalUni");
    print("Monto bruto: $totalMonto");
    print("Comisión tienda: $comTienda");
    print("Comisión calle: $comCalle");
    print("Canal mayor venta: $canalMayor");
    print("Vendedor menor unidades: $vendMenos");
  }

  print(" Reporte por Estado");

  for (var d in datos) {
    int est = d["estado"];
    String nomEst = d["nomEstado"];

    double monto = montoEstado[est] ?? 0;
    int totalCiudades = datos.where((x) => x["estado"] == est).length;

    double porcNoCumplen = ((noCumplen[est] ?? 0) / totalCiudades) * 100;

    print("\nEstado $est - $nomEst");
    print("Monto neto vendido: $monto");
    print(
      "Ciudades que no alcanzaron meta: ${porcNoCumplen.toStringAsFixed(1)}%",
    );
    print("Ciudades con +40% a +60%: ${ciudades40_60[est] ?? 0}");
  }
}
