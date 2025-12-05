void main() {
  List<Map<String, dynamic>> alumnos = [
    {"edad": 20, "sexo": "M", "civil": "S", "esp": "Ing"},
    {"edad": 25, "sexo": "F", "civil": "C", "esp": "Mat"},
    {"edad": 18, "sexo": "M", "civil": "S", "esp": "Ing"},
    {"edad": 30, "sexo": "F", "civil": "S", "esp": "Med"},
  ];

  int contH = 0, contM = 0;
  int edadH = 0, edadM = 0;

  int solterosH = 0, solterasM = 0;
  int jovenesH = 0;

  Map<String, int> especial = {};

  for (var a in alumnos) {
    int edad = a["edad"];
    String sexo = a["sexo"];
    String civil = a["civil"];
    String esp = a["esp"];

    especial[esp] = (especial[esp] ?? 0) + 1;

    if (sexo == "F") {
      contM++;
      edadM += edad;
      if (civil == "S" && edad > 21) solterasM++;
    } else {
      contH++;
      edadH += edad;
      if (civil == "S") solterosH++;
      if (edad < 21 && edad > 17) jovenesH++;
    }
  }

  print("Promedio edad mujeres: ${edadM / contM}");
  print("Promedio edad hombres: ${edadH / contH}");
  print("Cantidad hombres: $contH, mujeres: $contM");

  print("Alumnos por especialidad:");
  print(especial);

  print("Mujeres adultas (>21): $solterasM");
  print("Hombres jóvenes (<21 y >17): $jovenesH");
  print("Hombres solteros: $solterosH");
  print("Mujeres solteras: $solterasM");
}
