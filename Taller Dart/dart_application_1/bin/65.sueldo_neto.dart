void main() {
  List<Map<String, dynamic>> empleados = [
    {"nombre": "Ana", "cedula": "1", "tipo": 1, "hijos": 2, "asistencia": 97},
    {"nombre": "Luis", "cedula": "2", "tipo": 2, "hijos": 3, "asistencia": 80},
    {"nombre": "Maria", "cedula": "3", "tipo": 3, "hijos": 1, "asistencia": 99},
  ];

  for (var e in empleados) {
    double basico = 0;
    if (e["tipo"] == 1)
      basico = 100000;
    else if (e["tipo"] == 2)
      basico = 165500;
    else
      basico = 250000;

    double aporteHijos = basico * 0.10 * (e["hijos"] <= 5 ? e["hijos"] : 5);
    double asistencia = (e["asistencia"] > 95) ? basico * 0.05 : 0;
    double caja = basico * 0.10;
    double seguro = basico * 0.02;

    double sueldoNeto = basico + aporteHijos + asistencia - caja - seguro;

    print(
      "${e['nombre']} - ${e['cedula']} - Básico: $basico - Neto: $sueldoNeto",
    );
  }
}
