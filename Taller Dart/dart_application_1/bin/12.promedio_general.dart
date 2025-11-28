void main() {
  String nombre = 'juan';
  double tarea1 = 4.0, tarea2 = 5.0, tarea3 = 4.0;
  double examen = 3.0;

  double promediogeneral = (tarea1 + tarea2 + tarea3) / 3;
  double promediotareas = promediogeneral * 0.10;

  double examenmatematicas = examen * 0.90;

  double notageneralmatematicas = promediotareas + examenmatematicas;

  print("La nota en general de matematicas es de: $notageneralmatematicas");
  print(
    '-------------------------------------------------------------------------',
  );

  double t1 = 3.5, t2 = 4.0;
  double examen2 = 3.5;

  double promediogeneralf = (t1 + t2) / 2;
  double promediotareasf = promediogeneralf * 0.20;

  double examenfisica = examen2 * 0.80;

  double notasgeneralfisica = promediotareasf + examenfisica;

  print("la nota en general de fisica es:$notasgeneralfisica ");

  double Tq1 = 3.0, Tq2 = 3.5, Tq3 = 3.4;
  double examen3 = 3.9;

  double promediogeneralq = (Tq1 + Tq2 + Tq3) / 3;
  double promediotareasq = promediogeneralq * 0.15;

  double examenquimica = examen3 * 0.85;

  double notasgeneralquimica = promediotareasq + examenquimica;
  print(
    "---------------------------------------------------------------------",
  );
  print("La nota en genral de quimica es: $notasgeneralquimica");

  double promediogenral =
      (notasgeneralquimica + notasgeneralfisica + notageneralmatematicas) / 3;
  print("-----------------------------------------------------------------");
  print(
    "Tu  promedio $nombre en general en las tres matrerias es:$promediogenral",
  );
}
