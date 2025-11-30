void main() {
  double capital = 50000;
  double interes = capital * 0.20;

  double dineroFinal;

  if (interes > 7000) {
    dineroFinal = capital + interes;
  } else {
    dineroFinal = capital;
  }

  print("Intereses generados: $interes");
  print("Dinero final en la cuenta: $dineroFinal");
}
