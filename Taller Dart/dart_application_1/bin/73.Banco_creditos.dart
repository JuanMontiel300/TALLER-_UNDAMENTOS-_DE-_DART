void main() {
  List<Map<String, dynamic>> datos = [
    {
      "cliente": "Juan",
      "codCli": 101,
      "estado": 10,
      "agencia": 1001,
      "pagares": [
        {"num": 1, "monto": 5000.0, "venc": "10/01/2025"},
        {"num": 2, "monto": 3000.0, "venc": "15/01/2025"},
      ],
    },
    {
      "cliente": "Luis",
      "codCli": 201,
      "estado": 20,
      "agencia": 2001,
      "pagares": [
        {"num": 3, "monto": 12000.0, "venc": "12/01/2025"},
        {"num": 4, "monto": 8000.0, "venc": "18/01/2025"},
      ],
    },
  ];

  Map<int, double> totalAgencia = {};
  Map<int, double> totalEstado = {};
  Map<int, Map<String, dynamic>> mayorPorAgencia = {};

  double sumaMaximos = 0;
  int cantidadAgencias = 0;

  for (var c in datos) {
    double total = 0;

    for (var p in c["pagares"]) {
      total += p["monto"];
    }

    totalAgencia[c["agencia"]] = (totalAgencia[c["agencia"]] ?? 0) + total;
    totalEstado[c["estado"]] = (totalEstado[c["estado"]] ?? 0) + total;

    if (!mayorPorAgencia.containsKey(c["agencia"]) ||
        total > mayorPorAgencia[c["agencia"]]!["total"]) {
      mayorPorAgencia[c["agencia"]] = {"cliente": c["codCli"], "total": total};
    }

    print("----- RECIBO PARA CLIENTE ${c["cliente"]} -----");
    print(
      "Código: ${c["codCli"]} | Estado: ${c["estado"]} | Agencia: ${c["agencia"]}",
    );

    for (var p in c["pagares"]) {
      print("Pagaré ${p["num"]} - Vence: ${p["venc"]} - Monto: ${p["monto"]}");
    }

    print("Total pagarés: ${c["pagares"].length}");
    print("Monto total adeudado: $total\n");
  }

  print("---- TOTALES POR AGENCIA -----");
  totalAgencia.forEach((ag, monto) {
    print(
      "Agencia $ag → Total adeudado: $monto | Cliente mayor deuda: ${mayorPorAgencia[ag]!["cliente"]}",
    );
    sumaMaximos += mayorPorAgencia[ag]!["total"];
    cantidadAgencias++;
  });

  print("\n-------- TOTALES POR ESTADO ----------");
  for (var est in totalEstado.keys) {
    double menor = double.infinity;
    double mayor = -1;
    int agMenor = 0;
    int agMayor = 0;

    totalAgencia.forEach((ag, m) {
      if (m < menor) {
        menor = m;
        agMenor = ag;
      }
      if (m > mayor) {
        mayor = m;
        agMayor = ag;
      }
    });

    print(
      "Estado $est → Total adeudado: ${totalEstado[est]} | Agencia menor deuda: $agMenor | Agencia mayor deuda: $agMayor",
    );
  }

  double promedioMaximos = sumaMaximos / cantidadAgencias;

  print("\nPromedio nacional de montos máximos por agencia: $promedioMaximos");
}
