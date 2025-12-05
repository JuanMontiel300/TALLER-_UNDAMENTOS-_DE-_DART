void main() {
  double N = 37.0;
  double X = 0.1;
  double RN = (X + N / X) / 2;
  while ((X - RN).abs() >= 0.000001) {
    X = RN;
    RN = (X + N / X) / 2;
  }
  print("La Raíz aproximada: $RN");
}
