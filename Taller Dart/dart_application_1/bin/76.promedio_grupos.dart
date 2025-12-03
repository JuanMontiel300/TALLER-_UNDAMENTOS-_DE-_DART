void main() {
  List<List<List<List<double>>>> grupos = [
    [
      [
        [15, 18, 14],
        [20, 19, 18],
      ],
      [
        [12, 14, 16],
        [18, 17, 19],
      ],
    ],
    [
      [
        [10, 12, 11],
        [14, 16, 15],
      ],
    ],
  ];

  double sumaGeneral = 0;
  int totalAlumnos = 0;
  int numGrupo = 1;

  for (var grupo in grupos) {
    double sumaGrupo = 0;
    int alumnosGrupo = 0;

    for (var alumno in grupo) {
      double sumaAlumno = 0;
      for (var materia in alumno) {
        sumaAlumno += (materia[0] + materia[1] + materia[2]) / 3;
      }
      double promAlumno = sumaAlumno / alumno.length;
      sumaGrupo += promAlumno;
      alumnosGrupo++;
      print("Alumno grupo $numGrupo → Promedio: $promAlumno");
    }

    double promGrupo = sumaGrupo / alumnosGrupo;
    totalAlumnos += alumnosGrupo;
    sumaGeneral += sumaGrupo;
    print("Promedio Grupo $numGrupo: $promGrupo");
    print("----------------------------------");
    numGrupo++;
  }

  double promGeneral = sumaGeneral / totalAlumnos;
  print("Promedio general del año escolar: $promGeneral");
}
