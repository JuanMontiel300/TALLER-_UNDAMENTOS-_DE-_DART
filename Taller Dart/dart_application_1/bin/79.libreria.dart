void main() {
  List<Map<String, dynamic>> autores = [
    {
      "apellido": "Gomez",
      "libros": [
        {"cod": 1, "gen": "ciencia ficcion", "pag": 230},
        {"cod": 2, "gen": "romance", "pag": 180},
        {"cod": 3, "gen": "accion", "pag": 310},
      ],
    },
    {
      "apellido": "Perez",
      "libros": [
        {"cod": 4, "gen": "terror", "pag": 150},
        {"cod": 5, "gen": "romance", "pag": 220},
      ],
    },
    {
      "apellido": "Lopez",
      "libros": [
        {"cod": 6, "gen": "ciencia ficcion", "pag": 410},
        {"cod": 7, "gen": "academico", "pag": 500},
        {"cod": 8, "gen": "accion", "pag": 330},
      ],
    },
  ];

  int totalLibrosCF = 0;
  int totalCFyRomance = 0;
  String autorMasLibros = "";
  int cantMasLibros = 0;

  for (var a in autores) {
    int totalPag = 0;
    int mayorPag = 0;
    int codMayor = 0;

    for (var l in a["libros"]) {
      double pag = (l["pag"] as num).toDouble();
      totalPag += pag.toInt();

      if (pag > mayorPag) {
        mayorPag = pag.toInt();
        codMayor = l["cod"];
      }

      if (l["gen"] == "ciencia ficcion") totalLibrosCF++;
      if (l["gen"] == "ciencia ficcion" || l["gen"] == "romance")
        totalCFyRomance++;
    }

    int cantLibros = a["libros"].length;
    if (cantLibros > cantMasLibros) {
      cantMasLibros = cantLibros;
      autorMasLibros = a["apellido"];
    }

    print("Autor: ${a["apellido"]}");
    print(
      "Total páginas: $totalPag | Libro mayor: $codMayor con $mayorPag páginas",
    );
    print("----------------------------");
  }

  double totalLibros = autores.fold(0, (sum, a) => sum + a["libros"].length);
  double porcentajeCF = (totalLibrosCF * 100) / totalLibros;

  print("Porcentaje libros ciencia ficción: $porcentajeCF%");
  print("Cantidad libros CF + romance: $totalCFyRomance");
  print("Autor con más libros: $autorMasLibros con $cantMasLibros libros");
}
