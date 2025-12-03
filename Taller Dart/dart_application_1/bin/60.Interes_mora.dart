void main() {
  List<Map<String, dynamic>> facturas = [
    {"num": 1001, "cliente": "Luis", "monto": 5000.0, "dias": 70},
    {"num": 1002, "cliente": "Ana", "monto": 12000.0, "dias": 40},
    {"num": 1003, "cliente": "Pedro", "monto": 800.0, "dias": 10},
    {"num": 1004, "cliente": "María", "monto": 2000.0, "dias": 55},
  ];

  for (var f in facturas) {
    double monto = f["monto"];
    int dias = f["dias"];
    double interes = 0;
    double descuento = 0;

    if (dias >= 60)
      interes = monto * 0.08;
    else if (dias >= 31)
      interes = monto * 0.06;
    else if (dias <= 15)
      descuento = monto * 0.02;

    double montoCancelar = monto + interes - descuento;

    print("la Factura: ${f["num"]}");
    print("---------------------------------");
    print("el Cliente: ${f["cliente"]}");
    print("---------------------------------");
    print("El Monto original: $monto");
    print("---------------------------------");
    print("El Monto por intereses: $interes");
    print("---------------------------------");
    print("El Monto por descuento: $descuento");
    print("---------------------------------");
    print("El Monto a pagar: $montoCancelar");
  }
}
