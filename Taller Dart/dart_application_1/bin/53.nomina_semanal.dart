void main() {
  List<Map<String, dynamic>> empleados = [
    {"nombre": "Ana", "nac": "V", "edad": 25, "tipo": 1, "horas": 40},
    {"nombre": "Luis", "nac": "E", "edad": 31, "tipo": 2, "horas": 38},
    {"nombre": "Maria", "nac": "V", "edad": 45, "tipo": 3, "horas": 42},
    {"nombre": "Jose", "nac": "E", "edad": 27, "tipo": 1, "horas": 36},
    {"nombre": "Rosa", "nac": "V", "edad": 33, "tipo": 2, "horas": 40},
    {"nombre": "Tomas", "nac": "E", "edad": 41, "tipo": 3, "horas": 45},
  ];

  int veneTipo1 = 0, veneTipo2 = 0, veneTipo3 = 0;
  int extranjerosEdadImpar = 0;
  int sumaEdades = 0;
  double totalSueldos = 0;

  for (var e in empleados) {
    int tipo = e["tipo"];
    int horas = e["horas"];
    int edad = e["edad"];
    String nac = e["nac"];

    double pagohora = 0;
    if (tipo == 1)
      pagohora = 5000;
    else if (tipo == 2)
      pagohora = 10000;
    else
      pagohora = 15000;

    double sueldoBasico = horas * pagohora;

    double seguro = 0;
    if (sueldoBasico > 100000) seguro = sueldoBasico * 0.03;

    totalSueldos += sueldoBasico;

    if (nac == "V") {
      if (tipo == 1)
        veneTipo1++;
      else if (tipo == 2)
        veneTipo2++;
      else
        veneTipo3++;
    }

    if (nac == "E" && edad % 2 != 0) extranjerosEdadImpar++;

    sumaEdades += edad;
  }

  double promedioEdad = sumaEdades / empleados.length;

  print("Venezolanos tipo 1: $veneTipo1");
  print("Venezolanos tipo 2: $veneTipo2");
  print("Venezolanos tipo 3: $veneTipo3");
  print("Extranjeros con edad impar: $extranjerosEdadImpar");
  print("Promedio de edad: $promedioEdad");
  print("Total general de sueldos: $totalSueldos");
}
