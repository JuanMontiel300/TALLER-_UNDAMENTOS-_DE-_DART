void main() {
  print("Fahrenheit   Celsius   Kelvin   Rankine");

  for (int F = 28; F <= 54; F++) {
    double C = 5 * (F - 32) / 9;
    double R = F + 459.67;
    double K = C + 273.15;

    print(
      "$F          ${C.toStringAsFixed(2)}     ${K.toStringAsFixed(2)}     ${R.toStringAsFixed(2)}",
    );
  }

  print("\n--- Segundo Rango ---");

  for (int F = 450; F <= 950; F += 50) {
    double C = 5 * (F - 32) / 9;
    double R = F + 459.67;
    double K = C + 273.15;

    print(
      "$F     ${C.toStringAsFixed(2)}   ${K.toStringAsFixed(2)}     ${R.toStringAsFixed(2)}",
    );
  }

  print("\n--- Tercer Rango ---");

  for (int F = -50; F <= 250; F += 10) {
    double C = 5 * (F - 32) / 9;
    double R = F + 459.67;
    double K = C + 273.15;

    print(
      "$F    ${C.toStringAsFixed(2)}    ${K.toStringAsFixed(2)}   ${R.toStringAsFixed(2)}",
    );
  }
}
