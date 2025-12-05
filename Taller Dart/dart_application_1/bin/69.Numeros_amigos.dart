int sumaDivisores(int n) {
  int suma = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) suma += i;
  }
  return suma;
}

void main() {
  int encontrados = 0;
  int num = 2;

  while (encontrados < 3) {
    int sumaA = sumaDivisores(num);
    int sumaB = sumaDivisores(sumaA);

    if (sumaB == num && sumaA != num) {
      print("Par amigo: $num y $sumaA");
      encontrados++;
      num = sumaA + 1;
    } else {
      num++;
    }
  }
}
