void main() {
  double capital = 1000.0;
  double tasaAnual = 0.06;
  int semanas = 4;

  int dias = semanas * 7;
  for (int i = 0; i < dias; i++) {
    double interesDia = capital * tasaAnual / 365.0;
    capital += interesDia;
  }

  print("El Capital acumulado después de $semanas semanas: $capital");
}
